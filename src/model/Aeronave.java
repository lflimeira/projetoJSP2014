package model;

import dao.AeronaveDAO;
import to.AeronaveTO;
import bd.DAOFactory;

public class Aeronave {
	
	AeronaveTO aeronaveTO = null;
	
	public Aeronave(AeronaveTO aeronaveTO){
		this.aeronaveTO = aeronaveTO;
	}
	
	public void cadastrar(){
		DAOFactory factory = DAOFactory.getInstance();
		AeronaveDAO dao = factory.getAeronaveDAO();
		dao.cadastrar(aeronaveTO);
	}

}
