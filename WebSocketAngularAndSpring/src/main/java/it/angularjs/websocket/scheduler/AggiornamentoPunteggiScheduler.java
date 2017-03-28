package it.angularjs.websocket.scheduler;

import it.angularjs.websocket.service.PunteggioLiveService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;

/**
 * Classe che si occupa di schedulare l'aggiornamento automatico dei punteggi
 * 
 * @author arx50011
 * 
 */
@Configuration
@EnableScheduling
public class AggiornamentoPunteggiScheduler {

	@Autowired
	private SimpMessagingTemplate template;

	@Autowired
	PunteggioLiveService service;

	// ogni 5 secondi invio gli aggiornamenti ai vari client che ascoltano l'url '/aggiornamenti/punteggi'
	@Scheduled(fixedRate = 10000)
	public void pubblicaAggiornamenti() {

		template.convertAndSend("/aggiornamenti/punteggi", service.getPartite());

	}

}
