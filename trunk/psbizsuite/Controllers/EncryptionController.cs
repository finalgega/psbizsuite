using System;
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

        public byte[] StringToByte(StringBuilder dataInput)
        {
            //  Creates a UnicodeEncoder to convert between a byte array and string
            UnicodeEncoding ByteConverter = new UnicodeEncoding();
            //  Create byte arrays to hold original data and encrypted data
            byte[] dataToEncrypt = ByteConverter.GetBytes(dataInput.ToString());

            return dataToEncrypt;
        }

        public string ByteToString(byte[] byteData)
        {
            UnicodeEncoding ByteConverter = new UnicodeEncoding();
            string strData = ByteConverter.GetString(byteData);
            return strData;
        }

    }
}
