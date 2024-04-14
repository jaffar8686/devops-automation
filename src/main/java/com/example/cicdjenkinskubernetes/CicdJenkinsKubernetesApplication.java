package com.example.cicdjenkinskubernetes;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class CicdJenkinsKubernetesApplication {

	@GetMapping("/jenkins-kubernetes")
	public String hello(){
		return "Spring Boot deployed using Jenkins and Kubernetes";
	}

	public static void main(String[] args) {
		SpringApplication.run(CicdJenkinsKubernetesApplication.class, args);
	}

}
