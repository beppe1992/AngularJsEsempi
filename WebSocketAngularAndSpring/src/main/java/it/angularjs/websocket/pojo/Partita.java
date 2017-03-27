package it.angularjs.websocket.pojo;

/**
 * Descrive una partita
 * @author arx50011
 *
 */
public class Partita {

	private Squadra squadraCasa;

	private Squadra squadraOspite;

	private int goalCasa;

	private int goalOspite;

	public Squadra getSquadraCasa() {
		return squadraCasa;
	}

	public void setSquadraCasa(Squadra squadraCasa) {
		this.squadraCasa = squadraCasa;
	}

	public Squadra getSquadraOspite() {
		return squadraOspite;
	}

	public void setSquadraOspite(Squadra squadraOspite) {
		this.squadraOspite = squadraOspite;
	}

	public int getGoalCasa() {
		return goalCasa;
	}

	public void setGoalCasa(int goalCasa) {
		this.goalCasa = goalCasa;
	}

	public int getGoalOspite() {
		return goalOspite;
	}

	public void setGoalOspite(int goalOspite) {
		this.goalOspite = goalOspite;
	}

}
