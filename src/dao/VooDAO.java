package dao;

import java.util.List;

import model.VooException;
import to.VooTO;

public interface VooDAO {

	public int cadastrar(VooTO aeronaveTO) throws VooException;
	
	public List<VooTO> consultar() throws VooException;
	
	public VooTO consultaUnica(int codigo) throws VooException;
	
	public List<VooTO> consultaVooVolta(String ida, String volta) throws VooException;
	
	public void alterar(VooTO aeronaveTO) throws VooException;

	public void excluir(int codigo) throws VooException;

}
