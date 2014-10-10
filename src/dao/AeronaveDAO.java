package dao;

import to.AeronaveTO;
import model.AeronaveException;

public interface AeronaveDAO{

	public Long cadastrar(AeronaveTO aeronaveTO) throws AeronaveException;

}
