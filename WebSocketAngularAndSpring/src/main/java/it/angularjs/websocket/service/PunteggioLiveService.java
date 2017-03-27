package it.angularjs.websocket.service;

import it.angularjs.websocket.pojo.Partita;
import it.angularjs.websocket.pojo.Squadra;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.springframework.stereotype.Component;

/**
 * Classe di servizio che si occupa di gestire i punteggi Live delle partite
 * 
 * @author arx50011
 * 
 */
@Component
public class PunteggioLiveService {

	private List<Partita> partite = inizializzaPartite();

	public List<Partita> getPartite() {

		Random rand = new Random();
		int partitaDaAggiornare = 0;

		// se il numero random generato e' pari aggiorno partita con indice 1, altrimenti la partita con indice 0
		int randomNum = rand.nextInt();
		if (randomNum % 2 == 0) {
			partitaDaAggiornare = 1;
		} else {
			partitaDaAggiornare = 0;
		}

		// se il numero random generato e' pari segnano le squadre di casa,
		// altrimenti le squadre ospiti
		randomNum = rand.nextInt();
		if (randomNum % 2 == 0) {
			partite.get(partitaDaAggiornare).setGoalCasa(partite.get(partitaDaAggiornare).getGoalCasa() + 1);
		} else {
			partite.get(partitaDaAggiornare).setGoalOspite(partite.get(partitaDaAggiornare).getGoalOspite() + 1);
		}

		return partite;
	}

	private List<Partita> inizializzaPartite() {

		Partita partitaUno = new Partita();
		Squadra squadraCasa = new Squadra("BEL", "BELGIO");
		Squadra squadraOspite = new Squadra("OLA", "OLANDA");
		partitaUno.setSquadraCasa(squadraCasa);
		partitaUno.setSquadraOspite(squadraOspite);
		partitaUno.setGoalCasa(0);
		partitaUno.setGoalOspite(0);

		Partita partitaDue = new Partita();
		squadraCasa = new Squadra("ITA", "ITALIA");
		squadraOspite = new Squadra("SPA", "SPAGNA");
		partitaDue.setSquadraCasa(squadraCasa);
		partitaDue.setSquadraOspite(squadraOspite);
		partitaDue.setGoalCasa(0);
		partitaDue.setGoalOspite(0);

		List<Partita> listaPartite = new ArrayList<Partita>();

		listaPartite.add(partitaUno);
		listaPartite.add(partitaDue);

		return listaPartite;
	}
}
