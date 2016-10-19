package it.alfasoft.fabrizio.bean;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class UtenteBean implements Serializable, DataBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id_utente;
	private String nome;
	private String cognome;
	private String username;
	private String password;
	
	public UtenteBean (){
		this.nome = "";
		this.cognome = "";
		this.username = "";
		this.password = "";
	}

	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCognome() {
		return cognome;
	}
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public boolean isValid() {
		boolean token = false;
		if(!this.nome.isEmpty() &&
				!this.cognome.isEmpty() &&
				!this.username.isEmpty() &&
				!this.password.isEmpty()){
			token = true;
		}
		
		return token;
	}
}
