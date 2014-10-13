package model;

import java.util.List;

import dao.AeronaveDAO;
import to.AeronaveTO;
import bd.DAOFactory;


public class Aeronave {
	
	AeronaveTO aeronaveTO = null;
	
	public Aeronave(AeronaveTO aeronaveTO){
		this.aeronaveTO = aeronaveTO;
	}
	
	public void cadastrar() throws AeronaveException{
		DAOFactory factory = DAOFactory.getInstance();
		AeronaveDAO dao = factory.getAeronaveDAO();
		dao.cadastrar(aeronaveTO);
	}
	
	public List<AeronaveTO> consultar() throws AeronaveException{
		DAOFactory factory = DAOFactory.getInstance();
		AeronaveDAO dao = factory.getAeronaveDAO();
		return dao.consultar();
	}

}
