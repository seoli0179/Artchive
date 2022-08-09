package com.spring_boot_final.project;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"com.spring_boot_final.project"})
@MapperScan(basePackages = {"com.spring_boot_final.project"})
public class SpringBootFinalApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootFinalApplication.class, args);
	}

}
