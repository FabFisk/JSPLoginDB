package it.alfasoft.fabrizio.bean;

public class MessaggioBean {
	
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
		this.messaggio = "Questo Utente � gi� registrato!";
	}
	
	public void usermaneEsiste(){
		this.messaggio = "Questo username non � disponibile!";
	}
	
	public void campiNonValidi(){
		this.messaggio = "Devi compilare tutti i campi!";
	}
	

}
