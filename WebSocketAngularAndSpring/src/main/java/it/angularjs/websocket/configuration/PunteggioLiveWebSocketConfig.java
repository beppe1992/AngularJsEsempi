package it.angularjs.websocket.configuration;

import org.springframework.context.annotation.Configuration;
import org.springframework.messaging.simp.config.MessageBrokerRegistry;
import org.springframework.web.socket.config.annotation.AbstractWebSocketMessageBrokerConfigurer;
import org.springframework.web.socket.config.annotation.EnableWebSocketMessageBroker;
import org.springframework.web.socket.config.annotation.StompEndpointRegistry;

/**
 * Configurazione dell'endpoint di WebSocket lato Server
 * 
 * @author arx50011
 * 
 */

@Configuration
@EnableWebSocketMessageBroker
public class PunteggioLiveWebSocketConfig extends
		AbstractWebSocketMessageBrokerConfigurer {

	@Override
	public void configureMessageBroker(MessageBrokerRegistry config) {
		// gli aggiornamenti inviati ai client verranno inviati all'url /aggiornamenti/*
		config.enableSimpleBroker("/aggiornamenti");
		
		// i messaggi inviati dai client ai server, dovranno essere inviati all'url /app/*
		config.setApplicationDestinationPrefixes("/app");
	}

	// Configuro l'endpoint, che risponderà quindi a
	// http://localhost:8080/punteggiolive-websocket
	@Override
	public void registerStompEndpoints(StompEndpointRegistry registry) {
		registry.addEndpoint("/punteggiolive-websocket").setAllowedOrigins("*")
				.withSockJS();

	}

}
