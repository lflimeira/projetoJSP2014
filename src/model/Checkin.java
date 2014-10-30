package model;

import dao.CheckinDAO;
import bd.DAOFactory;
import to.CheckinTO;

public class Checkin {

	CheckinTO checkinTO = null;
	
	public Checkin(CheckinTO checkinTO){
		this.checkinTO = checkinTO;
	}
	
	public CheckinTO consultaValores(int codigo) throws CheckinException{
		DAOFactory factory = DAOFactory.getInstance();
		CheckinDAO dao = factory.getCheckinDAO();
		return dao.consultaValores(codigo);
	}
	
}
