package dao;

import model.ResponsavelCompraException;
import to.ResponsavelTO;


public interface ResponsavelCompraDAO {
	
	public Long cadastrar(ResponsavelTO respCompTO) throws ResponsavelCompraException;
	
	public ResponsavelTO consultaUnica(int codigo) throws ResponsavelCompraException;
	

}
