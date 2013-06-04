﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Security.Cryptography;
using System.Text;

namespace psbizsuite.Controllers
{
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
        /// </summary>
        /// <param name="password">The password to verify</param>
        /// <param name="goodHash">A hash of the correct password</param>
        /// <returns>True if the password is correct. False otherwise</returns>
        public static bool ValidatePassword(string password, string goodHash)
        {
            //  Extract the parameters from the hash
            char[] delimiter = { ':' };
            string[] split = goodHash.Split(delimiter);
            int iterations = Int32.Parse(split[ITERATION_INDEX]);
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

    }
}
