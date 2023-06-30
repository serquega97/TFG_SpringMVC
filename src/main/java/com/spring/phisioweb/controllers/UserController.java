package com.spring.phisioweb.controllers;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Base64;
import java.util.Map;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

import com.spring.phisioweb.api.user.UserAPIRest;
import com.spring.phisioweb.model.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/users")
@ResponseBody
public class UserController {
    
    @Autowired
    UserAPIRest userAPI;

    public static final String myKey = "TFG_EncryptSecret";
    private static SecretKeySpec secretKey;
    private static byte[] key;

    @GetMapping("/signup/form.html")
    public static ModelAndView createNewuserForm() {
        return new ModelAndView("registrationForm");
    }

    @PostMapping("/signup/data.html")
    @ResponseBody
    public ModelAndView createNewuserRepository(@RequestParam Map<String, String> requestParams) {
        ModelAndView model = new ModelAndView("login");
        User user = new User();

        String firstName = requestParams.get("firstName");
        if(firstName != null && !firstName.isBlank()) {
            user.setName(firstName);
        }

        String lastName1 = requestParams.get("lastName1");
        if(lastName1 != null && !lastName1.isBlank()) {
            user.setSurname1(lastName1);
        }

        String lastName2 = requestParams.get("lastName2");
        if(lastName2 != null && !lastName2.isBlank()) {
            user.setSurname2(lastName2);
        }

        String phone = requestParams.get("phone");
        if(phone != null && !phone.isBlank()) {
            user.setPhoneNumber(Integer.parseInt(phone));
        }

        String username = requestParams.get("username");
        if(username != null && !username.isBlank()) {
            user.setUsername(encryptData(username));
        }

        String password = requestParams.get("password");
        if(password != null && !password.isBlank()) {
            user.setPassword(encryptData(password));
        }

        String email = requestParams.get("email");
        if(email != null && !email.isBlank()) {
            user.setEmail(encryptData(email));
        }

        try {
            String strBirthDate = requestParams.get("birthDate");
            if(strBirthDate != null && !strBirthDate.isBlank()) {
                user.setBirthdate(new SimpleDateFormat("dd/mm/yyyy").parse(strBirthDate));
            }
        }catch(Exception e) {
            e.printStackTrace();
        }

        String gender = requestParams.get("gender");
        if(gender != null && !gender.isBlank()) {
            user.setGender(gender);
        }

        ResponseEntity<User> response = userAPI.createUser(user);
        if(response.getStatusCode() == HttpStatus.CREATED) {
            model.addObject("createUserSuccess", true);
        }else {
            model.addObject("createUserSuccess", false);
        }
        return model;
    }

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
