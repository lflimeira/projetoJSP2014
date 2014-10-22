package model;

import dao.*;
import bd.*;
import to.*;

public class ResponsavelCompra {
	
	ResponsavelCompraTO repCompraTO = null;
	
	public ResponsavelCompra(ResponsavelCompraTO repCompraTO){
		this.repCompraTO = repCompraTO;
	}
	
	public int cadastrar() throws ResponsavelCompraException{
		DAOFactory factory = DAOFactory.getInstance();
		ResponsavelCompraDAO dao = factory.getResponsavelCompraDAO();
		return Integer.parseInt(dao.cadastrar(repCompraTO).toString());
	}
	
	public ResponsavelCompraTO consultaUnica(int codigo) throws ResponsavelCompraException{
		DAOFactory factory = DAOFactory.getInstance();
		ResponsavelCompraDAO dao = factory.getResponsavelCompraDAO();
		return dao.consultaUnica(codigo);
	}
	

}
