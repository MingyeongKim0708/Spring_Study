package com.ssafy.mvc;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

@SpringBootApplication
public class SpringStudyApplication {

	public static void main(String[] args) {
		ApplicationContext context = SpringApplication.run(SpringStudyApplication.class, args);
		// 실행시켜보면 뭐가 지금 등록되어 있는지 알 수 있다
//		for (String name : context.getBeanDefinitionNames()) {
//		System.out.println(name);
//	}
	}

}
