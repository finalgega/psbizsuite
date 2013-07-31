 using System;
using System.Collections.Generic;
using System.Collections;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Security.Cryptography;
using System.Text;

namespace psbizsuite.Controllers
{
    [Obsolete]
    public class EncryptionController : ApiController
    {
        // The following constants may be changed without breaking existing hashes.
        public const int SALT_BYTES = 24;
        public const int HASH_BYTES = 24;
        public const int PBKDF2_ITERATIONS = 1000;

        public const int ITERATION_INDEX = 0;
        public const int SALT_INDEX = 1;
        public const int PBKDF2_INDEX = 2;

        /// <summary>
        /// Lightweight XOR algorithm
        /// </summary>
        /// <param name="dataInput"></param>
        /// <returns></returns>
        public StringBuilder SimpleXORAlgorithm(StringBuilder dataInput)
        {
            RandomNumberGenerator rng = new RNGCryptoServiceProvider();
            byte[] key = new byte[1024];
            rng.GetBytes(key);
            StringBuilder dataOutput = new StringBuilder(dataInput.ToString());
            for (int i = 0; i < dataInput.Length; i++)
            {
                int character = ((int)dataInput[i] ^ key[i]);
                dataOutput[i] = (char)character;
            }
            return dataOutput;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="dataInput"></param>
        /// <param name="key"></param>
        /// <returns></returns>
        public StringBuilder SimpleXORAlgorithm(StringBuilder dataInput, byte[] key)
        {
            StringBuilder dataOutput = new StringBuilder(dataInput.ToString());
            for (int i = 0; i < dataInput.Length; i++)
            {
                int character = ((int)dataInput[i] ^ key[i]);
                dataOutput[i] = (char)character;
            }
            return dataOutput;
        }

        /// <summary>
        /// Encryption portion of RSA
        /// </summary>
        /// <param name="dataInput"></param>
        /// <returns></returns>
        public byte[] RSAEncrypt(StringBuilder dataInput)
        {
            try
            {
                byte[] dataToEncrypt = StringToByte(dataInput);
                byte[] encryptedData;

                RSACryptoServiceProvider RSA = new RSACryptoServiceProvider();
                encryptedData = RSA.Encrypt(dataToEncrypt, false);
                return encryptedData;
            }
            catch (CryptographicException cryptoEx)
            {
                Console.WriteLine(cryptoEx.Message);
                return null;
            }
        }

        /// <summary>
        /// Decryption method of RSA
        /// </summary>
        /// <param name="encryptedData"></param>
        /// <returns></returns>
        public string RSADecrypt(byte[] encryptedData)
        {
            try
            {
                byte[] decryptedData;

                //  Creates a new instance of RSACryptoServiceProvider
                using (RSACryptoServiceProvider RSA = new RSACryptoServiceProvider())
                {
                    decryptedData = RSA.Decrypt(encryptedData, false);
                }
                return ByteToString(decryptedData);
            }
            catch (CryptographicException cryptoEx)
            {
                Console.WriteLine(cryptoEx.Message);
                return null;
            }
        }

        private byte[] StringToByte(StringBuilder dataInput)
        {
            //  Creates a UnicodeEncoder to convert between a byte array and string
            UnicodeEncoding ByteConverter = new UnicodeEncoding();
            //  Create byte arrays to hold original data and encrypted data
            byte[] dataToEncrypt = ByteConverter.GetBytes(dataInput.ToString());

            return dataToEncrypt;
        }

        /// <summary>
        /// Converts a given byte to its string counterpart
        /// </summary>
        /// <param name="byteData">Byte array to be converted</param>
        /// <returns></returns>
        private string ByteToString(byte[] byteData)
        {
            string strData = Convert.ToString(byteData);
            return strData;
        }

        /// <summary>
        /// Computes a hash of a file for integrity purposes.
        /// </summary>
        /// <param name="file">MultipartFileData uploaded from the FileUpload</param>
        /// <returns></returns>
        public static string CreateHash(MultipartFileData file)
        {
            FileStream fs = new FileStream(file.LocalFileName, FileMode.Open, FileAccess.Read);          
            SHA256CryptoServiceProvider sha = new SHA256CryptoServiceProvider();
            byte[] hash = sha.ComputeHash(fs);
            return String.Join(",", hash);
        }

        /// <summary>
        /// Creates a salted PBKDF2 hash of the password
        /// </summary>
        /// <param name="password">The password to hash</param>
        /// <returns>The hash of the password</returns>
        public static string CreatePasswordHash(string password)
        {
            //  Generates a random salt
            RNGCryptoServiceProvider rng = new RNGCryptoServiceProvider();
            byte[] salt = new byte[SALT_BYTES];
            rng.GetBytes(salt);

            //  Hashes the password and encodes the parameters
            byte[] hash = PBKDF2(password, salt, PBKDF2_ITERATIONS, HASH_BYTES);
            return PBKDF2_ITERATIONS + ":" + Convert.ToBase64String(salt) + ":" + Convert.ToBase64String(hash);
        }

        /// <summary>
        /// Validates a password given a hash of the correct one.
        /// NOTE: You need to concat the password and hash of the userccout and separate them with a :
        /// </summary>
        /// <param name="password">The password to verify</param>
        /// <param name="goodHash">A hash of the correct password</param>
        /// <returns>True if the password is correct. False otherwise</returns>
        public static bool ValidatePassword(string password, string goodHash)
        {
            //  Extract the parameters from the hash
            char[] delimiter = { ':' };
            string[] split = goodHash.Split(delimiter);
            int iterations = PBKDF2_ITERATIONS;
            byte[] salt = Convert.FromBase64String(split[SALT_INDEX]);
            byte[] hash = Convert.FromBase64String(split[PBKDF2_INDEX]);

            byte[] testHash = PBKDF2(password, salt, iterations, hash.Length);
            return SlowEquals(hash, testHash);

        }

        /// <summary>
        /// Compares two byte arrays in length-constant time.
        /// This comparison method is used so that the password hashes
        /// cannot be extracted from on-line systems using a timing attack
        /// and then attacked off-line
        /// </summary>
        /// <param name="a">The first byte array</param>
        /// <param name="b">The second byte array</param>
        /// <returns>True if both byte arrays are equal. False otherwise</returns>
        private static bool SlowEquals(byte[] a, byte[] b)
        {
            
            uint diff = (uint)a.Length ^ (uint)b.Length;
            for (int i = 0; i < a.Length && i < b.Length; i++)
            {
                diff |= (uint)(a[i] ^ b[i]);
            }
            return diff == 0;
        }

        /// <summary>
        /// Computes the PBKDF2-SHA1 hash of a password
        /// </summary>
        /// <param name="password">The password to hash</param>
        /// <param name="salt">The salt</param>
        /// <param name="iterations">The PBKDF2 iteration count</param>
        /// <param name="outputBytes">The length of the hash to generate; in bytes</param>
        /// <returns>A hash of the password</returns>
        private static byte[] PBKDF2(string password, byte[] salt, int iterations, int outputBytes)
        {
            Rfc2898DeriveBytes pbkdf2 = new Rfc2898DeriveBytes(password, salt);
            pbkdf2.IterationCount = iterations;
            return pbkdf2.GetBytes(outputBytes);
        }

        public string EncryptString(string inputString, int dwKeySize,
                             string xmlString)
        {
            // TODO: Add Proper Exception Handlers
            RSACryptoServiceProvider rsaCryptoServiceProvider =
                                          new RSACryptoServiceProvider(dwKeySize);
            rsaCryptoServiceProvider.FromXmlString(xmlString);
            int keySize = dwKeySize / 8;
            byte[] bytes = Encoding.UTF32.GetBytes(inputString);
            // The hash function in use by the .NET RSACryptoServiceProvider here 
            // is SHA1
            // int maxLength = ( keySize ) - 2 - 
            //              ( 2 * SHA1.Create().ComputeHash( rawBytes ).Length );
            int maxLength = keySize - 42;
            int dataLength = bytes.Length;
            int iterations = dataLength / maxLength;
            StringBuilder stringBuilder = new StringBuilder();
            for (int i = 0; i <= iterations; i++)
            {
                byte[] tempBytes = new byte[
                        (dataLength - maxLength * i > maxLength) ? maxLength :
                                                      dataLength - maxLength * i];
                Buffer.BlockCopy(bytes, maxLength * i, tempBytes, 0,
                                  tempBytes.Length);
                byte[] encryptedBytes = rsaCryptoServiceProvider.Encrypt(tempBytes,
                                                                          true);
                // Be aware the RSACryptoServiceProvider reverses the order of 
                // encrypted bytes. It does this after encryption and before 
                // decryption. If you do not require compatibility with Microsoft 
                // Cryptographic API (CAPI) and/or other vendors. Comment out the 
                // next line and the corresponding one in the DecryptString function.
                Array.Reverse(encryptedBytes);
                // Why convert to base 64?
                // Because it is the largest power-of-two base printable using only 
                // ASCII characters
                stringBuilder.Append(Convert.ToBase64String(encryptedBytes));
            }
            return stringBuilder.ToString();
        }

        public string DecryptString(string inputString, int dwKeySize,
                                     string xmlString)
        {
            // TODO: Add Proper Exception Handlers
            RSACryptoServiceProvider rsaCryptoServiceProvider
                                     = new RSACryptoServiceProvider(dwKeySize);
            rsaCryptoServiceProvider.FromXmlString(xmlString);
            int base64BlockSize = ((dwKeySize / 8) % 3 != 0) ?
              (((dwKeySize / 8) / 3) * 4) + 4 : ((dwKeySize / 8) / 3) * 4;
            int iterations = inputString.Length / base64BlockSize;
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < iterations; i++)
            {
                byte[] encryptedBytes = Convert.FromBase64String(
                     inputString.Substring(base64BlockSize * i, base64BlockSize));
                // Be aware the RSACryptoServiceProvider reverses the order of 
                // encrypted bytes after encryption and before decryption.
                // If you do not require compatibility with Microsoft Cryptographic 
                // API (CAPI) and/or other vendors.
                // Comment out the next line and the corresponding one in the 
                // EncryptString function.
                Array.Reverse(encryptedBytes);
                arrayList.AddRange(rsaCryptoServiceProvider.Decrypt(
                                    encryptedBytes, true));
            }
            return Encoding.UTF32.GetString(arrayList.ToArray(
                                      Type.GetType("System.Byte")) as byte[]);
        }

      // code snippet to integrate into encryptioncontroller. prelim testing before encapsulation works.
      /*
         string cleartxt = "Ambitio Via Virtus";
            Console.WriteLine("Cleartext : " + cleartxt);
            byte[] byteText = Encoding.UTF8.GetBytes(cleartxt);
            SymmetricAlgorithm sa = TripleDESCryptoServiceProvider.Create();
            sa.GenerateKey();
            //  Establish the relevant crypto streams
            MemoryStream ms = new MemoryStream();
            CryptoStream cs = new CryptoStream(ms, sa.CreateEncryptor(), CryptoStreamMode.Write);
            cs.Write(byteText, 0, byteText.Length);
            cs.Close();
            byte[] byteCipher = ms.ToArray();
            ms.Close();

            string cipher = Encoding.UTF8.GetString(byteCipher);
            Console.WriteLine(" Cipher Text : " + cipher);
            MemoryStream mac = new MemoryStream(byteCipher);
            CryptoStream dcs = new CryptoStream(mac, sa.CreateDecryptor(sa.Key,sa.IV), CryptoStreamMode.Read);
            StreamReader sr = new StreamReader(dcs);
            string decryptedText = sr.ReadToEnd();
            dcs.Close();
            mac.Close();
            Console.WriteLine("Decrypted Text : " + decryptedText);

            Console.ReadKey();
            */
    }
}
