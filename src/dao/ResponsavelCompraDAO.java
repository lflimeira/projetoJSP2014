package dao;

import model.ResponsavelCompraException;
import to.ResponsavelCompraTO;


public interface ResponsavelCompraDAO {
	
	public Long cadastrar(ResponsavelCompraTO respCompTO) throws ResponsavelCompraException;
	
	public ResponsavelCompraTO consultaUnica(int codigo) throws ResponsavelCompraException;
	

}
