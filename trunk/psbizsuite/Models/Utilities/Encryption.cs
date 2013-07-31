using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;
using System.Text;
using System.IO;

namespace psbizsuite.Models.Utilities
{
    public class Encryption
    {

        [Flags]
        public enum ENCRYPTION_OPTION
        {
            ENCRYPT_FLAG = 0x01,
            DECRYPT_FLAG = 0x02
        };
        // The following constants may be changed without breaking existing hashes.
        public const int SALT_BYTES = 24;
        public const int HASH_BYTES = 24;
        public const int PBKDF2_ITERATIONS = 1000;

        public const int ITERATION_INDEX = 0;
        public const int SALT_INDEX = 1;
        public const int PBKDF2_INDEX = 2;

        public const int IV_INDEX = 0;
        public const int KEY_INDEX = 1;
        public const int ENCRYPTED_TEXT = 2;

        /// <summary>
        /// Encryption portion of RSA
        /// </summary>
        /// <param name="dataInput"></param>
        /// <returns></returns>
        public byte[] RSAEncrypt(string dataInput)
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

        /// <summary>
        /// Converts a given string to its byte counterparts
        /// </summary>
        /// <param name="dataInput"></param>
        /// <returns>byte[] byteData</returns>
        private byte[] StringToByte(string dataInput)
        {
            return Encoding.UTF8.GetBytes(dataInput);
        }

        /// <summary>
        /// Converts a given byte to its string counterpart
        /// </summary>
        /// <param name="byteData">Byte array to be converted</param>
        /// <returns>string text</returns>
        private string ByteToString(byte[] byteData)
        {
            return Encoding.UTF8.GetString(byteData) ;
        }

        /// <summary>
        /// Creates a salted PBKDF2 hash of the password
        /// Courtesy of crackstation.net/hashing-security.htm
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
        /// /// NOTE: You need to concat the password hash and the salt of the userccout and separate them with a :
        /// </summary>
        /// <param name="password">The password to verify</param>
        /// <param name="goodHash">A hash of the correct password</param>
        /// <returns>True if the password is correct. False otherwise</returns>
        public static bool ValidatePassword(string password, string goodHash,string goodSalt)
        {
            int iterations = PBKDF2_ITERATIONS;
            byte[] salt = Convert.FromBase64String(goodSalt);
            byte[] hash = Convert.FromBase64String(goodHash);

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

        /// <summary>
        /// Encryption via TripleDES Algorithm
        /// You are required to generate a Symmetric Algo = TripleDESCryoptoServiceProvider.Create()
        /// and pass in sa.GenerateKey() and sa.GenerateIV results inside as params
        /// /// Note : A string is returned in this order IV, Key, EncryptedText. Separated by :
        /// </summary>
        /// <param name="IV"></param>
        /// <param name="key"></param>
        /// <param name="clearText"></param>
        /// <returns></returns>
        public static byte[] Encrypt(byte[] IV, byte[] key,string clearText)
        {
            SymmetricAlgorithm sa = TripleDESCryptoServiceProvider.Create();
            sa.IV = IV;
            sa.Key = key;
            byte[] byteText = Encoding.UTF8.GetBytes(clearText);
            MemoryStream ms = new MemoryStream();
            CryptoStream cs = new CryptoStream(ms, sa.CreateEncryptor(sa.Key, sa.IV), CryptoStreamMode.Write);
            cs.Write(byteText, 0, byteText.Length);
            cs.Close();
            byte[] byteCiphertext = ms.ToArray();
            ms.Close();
            return byteCiphertext;
        }

        public static string Decrypt(byte[] IV, byte[] key, byte[] byteCipher)
        {
            byte[] cipher = new byte[byteCipher.Length];
            byteCipher.CopyTo(cipher, 0);
            SymmetricAlgorithm sa = TripleDESCryptoServiceProvider.Create();
            sa.IV = IV;
            sa.Key = key;
            MemoryStream ms = new MemoryStream(byteCipher);
            CryptoStream cs = new CryptoStream(ms, sa.CreateDecryptor(sa.Key, sa.IV), CryptoStreamMode.Read);
            StreamReader sr = new StreamReader(cs);
            string decryptedText = sr.ReadToEnd();
            cs.Close();
            ms.Close();
            return decryptedText;
        }

        public static byte[] TripleDESAlgorithm(byte[] IV, byte[] key, byte[] byteText, ENCRYPTION_OPTION flag)
        {
            SymmetricAlgorithm sa = new TripleDESCryptoServiceProvider();
            sa.IV = IV;
            sa.Key = key;
            switch(flag)
            {
                case ENCRYPTION_OPTION.DECRYPT_FLAG:
                    {
                        MemoryStream ms = new MemoryStream(byteText);
                        CryptoStream cs = new CryptoStream(ms,sa.CreateDecryptor(sa.Key,sa.IV), CryptoStreamMode.Read);
                        StreamReader sr = new StreamReader(cs);
                        string decryptedText = sr.ReadToEnd();
                        cs.Close();
                        ms.Close();
                        return Encoding.UTF8.GetBytes(decryptedText);
                    }
                case ENCRYPTION_OPTION.ENCRYPT_FLAG:
                    {
                        MemoryStream ms = new MemoryStream();
                        CryptoStream cs = new CryptoStream(ms,sa.CreateEncryptor(sa.Key,sa.IV),CryptoStreamMode.Write);
                        cs.Write(byteText,0,byteText.Length);
                        cs.Close();
                        byte[] byteCipher = ms.ToArray();
                        ms.Close();
                        string cipher = Encoding.UTF8.GetString(byteCipher);
                        byte[] byteCiphered = ms.ToArray();
                        return byteCiphered;
                    }
                default:
                    {
                        return null;
                    }
            }
        }
    }
}