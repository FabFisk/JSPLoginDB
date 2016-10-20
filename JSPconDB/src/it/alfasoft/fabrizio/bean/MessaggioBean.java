package it.alfasoft.fabrizio.bean;

import java.io.Serializable;

public class MessaggioBean implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String messaggio = "";
	
	public MessaggioBean(){}

	public String getMessaggio() {
		return messaggio;
	}
	public void setMessaggio(String messaggio) {
		this.messaggio = messaggio;
	}
	
	public void pswErrata(){
		this.messaggio = "La username e/o la password non sono corretti!";
	}
	
	public void userEsiste(){
		this.messaggio = "Questo Utente è già registrato!";
	}
	
	public void usermaneEsiste(){
		this.messaggio = "Questo username non è disponibile!";
	}
	
	public void campiNonValidi(){
		this.messaggio = "Devi compilare tutti i campi!";
	}
	

}
