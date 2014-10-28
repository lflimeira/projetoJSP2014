package dao;

import model.CheckinException;
import java.util.List;

public interface CheckinDAO {

	public void efetuarCheckin(int codigoPassagem) throws CheckinException;
	
}
