package com.resumeBuilder.resumeBuilder;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@ComponentScan(basePackages = "com.resumeBuilder.resumeBuilder")
@EnableJpaRepositories(basePackages = "com.resumeBuilder.resumeBuilder.repository")
public class ResumeBuilderApplication {
    public static void main(String[] args) {
        SpringApplication.run(ResumeBuilderApplication.class, args);
    }
}
