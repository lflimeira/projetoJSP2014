package dao;

import java.util.List;
import to.AeronaveTO;
import model.AeronaveException;

public interface AeronaveDAO{

	public Long cadastrar(AeronaveTO aeronaveTO) throws AeronaveException;
	
	public List<AeronaveTO> consultar() throws AeronaveException;
	
	public AeronaveTO consultaUnica(int codigo) throws AeronaveException;
	
	public void alterar(AeronaveTO aeronaveTO) throws AeronaveException;

}
