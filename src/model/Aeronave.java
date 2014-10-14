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
	
	public AeronaveTO consultaUnica(int codigo) throws AeronaveException{
		DAOFactory factory = DAOFactory.getInstance();
		AeronaveDAO dao = factory.getAeronaveDAO();
		return dao.consultaUnica(codigo);
	}
	
	public void alterar(AeronaveTO aeronaveTO) throws AeronaveException{
		DAOFactory factory = DAOFactory.getInstance();
		AeronaveDAO dao = factory.getAeronaveDAO();
		dao.alterar(aeronaveTO);
		
	}

}
