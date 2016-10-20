package it.alfasoft.fabrizio.service;

import java.security.MessageDigest;

import it.alfasoft.fabrizio.bean.UtenteBean;
import it.alfasoft.fabrizio.dao.UtenteBeanDAO;

public class Service {
	
	private UtenteBeanDAO uDAO = new UtenteBeanDAO();
	
	public void registraUtente(UtenteBean u){
		uDAO.createUtente(u);
	}
	
	public boolean cercaUtenteNomeCognome(String nome, String cognome){
		boolean token = false;
		if(uDAO.readUtenteNomeCognome(nome, cognome) != null){
			token = true;
		}
		return token;
	}
	
	public boolean cercaUtenteUserPsw(String user, String psw){
		boolean token = false;
		if(uDAO.readUtenteUserPsw(user, psw) != null){
			token = true;
		}
		return token;
	}
	
	public boolean cercaUtenteUser(String username){
		boolean token = false;
		if(uDAO.readUtenteUser(username) != null){
			token = true;
		}
		return token;
	}	
	
	public String codificaPsw(String psw){	
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			byte[] array = md.digest(psw.getBytes());
			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < array.length; ++i) {
				sb.append(Integer.toHexString((array[i] & 0xFF) | 0x100)
						.substring(1, 3));
			}
			return sb.toString();
		} catch (java.security.NoSuchAlgorithmException e) {
		}
		return null;
	}

}
