package it.angularjs.websocket;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan({ "it.angularjs.websocket" })
public class App {
	public static void main(String[] args) {
		SpringApplication.run(App.class, args);

	}
}
