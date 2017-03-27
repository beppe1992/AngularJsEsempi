package it.angularjs.websocket.pojo;

/**
 * Descrive una squadra
 * 
 * @author arx50011
 * 
 */
public class Squadra {

	private String codiceSquadra;

	private String descrizioneSquadra;

	public Squadra(String codiceSquadra, String descrizioneSquadra) {
		this.codiceSquadra = codiceSquadra;
		this.descrizioneSquadra = descrizioneSquadra;
	}

	public String getCodiceSquadra() {
		return codiceSquadra;
	}

	public void setCodiceSquadra(String codiceSquadra) {
		this.codiceSquadra = codiceSquadra;
	}

	public String getDescrizioneSquadra() {
		return descrizioneSquadra;
	}

	public void setDescrizioneSquadra(String descrizioneSquadra) {
		this.descrizioneSquadra = descrizioneSquadra;
	}

}
