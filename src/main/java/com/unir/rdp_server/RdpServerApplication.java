package com.unir.rdp_server;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@SpringBootApplication
@EnableEurekaServer
public class RdpServerApplication {
	public static void main(String[] args) {
		SpringApplication.run(RdpServerApplication.class, args);
	}

}
