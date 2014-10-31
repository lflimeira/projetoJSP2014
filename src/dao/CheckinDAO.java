package dao;

import model.CheckinException;
import to.CheckinTO;

public interface CheckinDAO {

	public CheckinTO consultaValores(int codigoPassagem) throws CheckinException;
	
	public void efetuaCheckin(int codigoPassagem, int fileira, int coluna) throws CheckinException;
	
}
