package dao;

import java.util.List;
import to.AeronaveTO;
import model.AeronaveException;

public interface AeronaveDAO{

	public Long cadastrar(AeronaveTO item) throws AeronaveException;
	
	public void editar(AeronaveTO item)throws AeronaveException;
	
	public void excluir(AeronaveTO item)throws AeronaveException;
	
	public List<AeronaveTO> consultar() throws AeronaveException;

}
