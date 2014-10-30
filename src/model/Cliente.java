package model;

import dao.*;
import bd.*;
import to.ClienteTO;

public class Cliente {
	
	ClienteTO clienteTO = null;
	
	public Cliente(ClienteTO clienteTO){
		this.clienteTO = clienteTO;
	}
	
	public int cadastrar() throws ClienteException{
		DAOFactory factory = DAOFactory.getInstance();
		ClienteDAO dao = factory.getClienteDAO();
		return Integer.parseInt(dao.cadastrar(clienteTO).toString());
	}

	

}
