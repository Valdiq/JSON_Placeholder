package org.example.json_placeholder;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
@EnableAsync
public class JsonPlaceholderApplication {

    public static void main(String[] args) {
        SpringApplication.run(JsonPlaceholderApplication.class, args);
    }

}
