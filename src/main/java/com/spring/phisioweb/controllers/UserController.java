package com.spring.phisioweb.controllers;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Base64;
import java.util.Map;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

import com.spring.phisioweb.api.user.UserAPIRest;
import com.spring.phisioweb.model.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/users")
public class UserController {
    
    @Autowired
    UserAPIRest userAPI;

    private static SecretKeySpec secretKey;
    private static byte[] key;

    @RequestMapping(value = "/login/signup/registration.html", method = RequestMethod.GET)
    public static ModelAndView createNewuserForm() {
        return new ModelAndView("registrationForm");
    }

    public static ModelAndView checkUserLogin() {
        return null;
    }

    @RequestMapping(value = "/create/user", method = RequestMethod.POST)
    public static ModelAndView createNewuserRepository(@RequestParam Map<String, String> requestParams) {
        User user = new User();

        return null;
    }

    //Method used to set a key secret for encrypting and decrypting
    public static void setKeySecretCripto() {
        final String myKey = "TFG_EncryptSecret";
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
