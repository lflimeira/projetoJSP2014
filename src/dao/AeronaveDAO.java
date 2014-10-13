package dao;

import java.util.List;
import to.AeronaveTO;
import model.AeronaveException;

public interface AeronaveDAO{

	public Long cadastrar(AeronaveTO aeronaveTO) throws AeronaveException;
	
	public List<AeronaveTO> consultar() throws AeronaveException;
	
	public AeronaveTO alterar(int codigo) throws AeronaveException;

}
