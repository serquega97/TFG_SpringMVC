package com.spring.phisioweb;

import com.ulisesbocchio.jasyptspringboot.annotation.EnableEncryptableProperties;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
@EnableEncryptableProperties
@SpringBootApplication
public class PhisiowebApplication {

	public static void main(String[] args) {
		System.setProperty("jasypt.encryptor.password", "tfgencrypt");
		SpringApplication.run(PhisiowebApplication.class, args);
	}

}
