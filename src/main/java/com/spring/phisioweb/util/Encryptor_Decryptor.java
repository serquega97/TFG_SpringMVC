package com.spring.phisioweb.util;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Base64;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public class Encryptor_Decryptor {
    
    public static final String myKey = "TFG_EncryptSecret";
    private static SecretKeySpec secretKey;
    private static byte[] key;
    
    //Method used to set a key secret for encrypting and decrypting
    public static void setKeySecretCripto() {
        MessageDigest sha = null;
        try {
            key = myKey.getBytes("UTF-8");
            sha = MessageDigest.getInstance("SHA-1");
            key = sha.digest(key);
            key = Arrays.copyOf(key, 16);
            secretKey = new SecretKeySpec(key, "AES");
        }catch(NoSuchAlgorithmException | UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }

    //Method used to encrypt a plain text
    public static String encryptData(final String strToEncrypt) {
        String encryptedData;
        try {
            setKeySecretCripto();
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(Cipher.ENCRYPT_MODE, secretKey);
            encryptedData = Base64.getEncoder().encodeToString(cipher.doFinal(strToEncrypt.getBytes("UTF-8")));
        }catch(Exception e) {
            e.printStackTrace();
            encryptedData = null;
        }

        return encryptedData;
    }

    //Method used to decrypt a plain text
    public static String decryptData(final String strToDecrypt) {
        String decryptedData;
        try {
            setKeySecretCripto();
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(Cipher.DECRYPT_MODE, secretKey);
            decryptedData = new String(cipher.doFinal(Base64.getDecoder().decode(strToDecrypt)));
        }catch(Exception e) {
            e.printStackTrace();
            decryptedData = null;
        }

        return decryptedData;
    }
}
