package dao;

import java.util.List;
import model.VooTO;

public interface CadastroVooDAO {
	
	public void inserir(VooTO item) throws Exception;
	
	public void alterar(VooTO item)throws Exception;
	
	public void excluir(VooTO item)throws Exception;
	
	public List<VooTO> consultar() throws Exception;

}
