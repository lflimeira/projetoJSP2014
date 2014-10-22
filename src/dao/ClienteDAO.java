package dao;

import model.ClienteException;
import to.ClienteTO;


public interface ClienteDAO {
	
	public Long cadastrar(ClienteTO clienteTO) throws ClienteException;
	
	public ClienteTO consultaUnica(int codigo) throws ClienteException;
	

}
