package it.alfasoft.fabrizio.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import it.alfasoft.fabrizio.bean.UtenteBean;
import it.alfasoft.fabrizio.utility.HibernateUtil;

public class UtenteBeanDAO {
	
	//1- Create
		public boolean createUtente(UtenteBean u) {
			boolean res = false;
			Session session = HibernateUtil.openSession();
			Transaction tx = null;
			try {
				tx = session.getTransaction();
				tx.begin();
				session.persist(u);
				tx.commit();
				res = true;
			} catch (Exception ex) {
				tx.rollback();
			} finally {
				session.close();
			}
			return res;
		}
		
		//2- Read
		
		public UtenteBean readUtente(long id_u){
			UtenteBean u = null;
			Session session = HibernateUtil.openSession();
			Transaction tx = null;
			try {
				tx = session.getTransaction();
				tx.begin();
				u = session.get(UtenteBean.class, id_u);
				tx.commit();
			} catch (Exception ex) {
				tx.rollback();
			} finally {
				session.close();
			}
			return u;
		}
		
		public UtenteBean readUtente(String user, String psw){
			UtenteBean u = null;
			Session session = HibernateUtil.openSession();
			Transaction tx = null;
			try {
				tx = session.getTransaction();
				tx.begin();
				Query query = session
						.createQuery("from UtenteBean where username=:userInserito and password=:pswInserito ");
				query.setString("userInserito", user);
				query.setString("pswInserito", psw);
				u = (UtenteBean) query.uniqueResult();
				tx.commit();
			} catch (Exception ex) {
				tx.rollback();
			} finally {
				session.close();
			}
			return u;
		}
		
		//3- Update
		public boolean updateUtente(UtenteBean u){
			boolean res = false;
			Session session = HibernateUtil.openSession();
			Transaction tx = null;
			try {
				tx = session.getTransaction();
				tx.begin();
				session.update(u);
				tx.commit();
				res = true;
			} catch (Exception ex) {
				tx.rollback();
			} finally {
				session.close();
			}
			return res;
		}

		//4- Delete
		public boolean deleteUtente(UtenteBean u) {
			boolean res = false;
			Session session = HibernateUtil.openSession();
			Transaction tx = null;
			try {
				tx = session.getTransaction();
				tx.begin();
				session.delete(u);
				tx.commit();
				res = true;
			} catch (Exception ex) {
				tx.rollback();
			} finally {
				session.close();
			}
			return res;
		}

}
