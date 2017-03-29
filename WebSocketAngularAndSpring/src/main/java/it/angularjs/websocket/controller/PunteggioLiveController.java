package it.angularjs.websocket.controller;

import java.util.List;

import it.angularjs.websocket.pojo.Partita;
import it.angularjs.websocket.service.PunteggioLiveService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;

@Controller
public class PunteggioLiveController {

	@Autowired
	private PunteggioLiveService service;

	/**
	 * Questo metodo rimane in ascolto per l'url /refresh-forzato, e una volta
	 * cliccato manda a tutti gli ascoltatori dell'url '/aggiornamenti/punteggi'
	 * le partite aggiornate
	 * 
	 * @return
	 */
	@MessageMapping("/app/refresh-forzato")
	@SendTo("/aggiornamenti/punteggi")
	public List<Partita> getScores() {

		return service.getPartite();
	}
}
