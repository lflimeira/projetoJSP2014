package model;

import java.util.List;

import dao.*;
import bd.*;
import to.VooTO;

public class Voo {
	
	VooTO vooTO = null;
	
	public Voo(VooTO vooTO){
		this.vooTO = vooTO;
	}
	
	public void cadastrar() throws VooException{
		DAOFactory factory = DAOFactory.getInstance();
		VooDAO dao = factory.getVooDAO();
		dao.cadastrar(vooTO);
	}
	
	public List<VooTO> consultar() throws VooException{
		DAOFactory factory = DAOFactory.getInstance();
		VooDAO dao = factory.getVooDAO();
		return dao.consultar();
	}
	
	public VooTO consultaUnica(int codigo) throws VooException{
		DAOFactory factory = DAOFactory.getInstance();
		VooDAO dao = factory.getVooDAO();
		return dao.consultaUnica(codigo);
	}
	public List<VooTO> consultaVooVolta(String ida, String volta) throws VooException{
		DAOFactory factory = DAOFactory.getInstance();
		VooDAO dao = factory.getVooDAO();
		return dao.consultaVooVolta(ida,volta);
	}
	
	public void alterar(VooTO vooTO) throws VooException{
		DAOFactory factory = DAOFactory.getInstance();
		VooDAO dao = factory.getVooDAO();
		dao.alterar(vooTO);
		
	}
	public void excluir(int codigo)throws VooException{
		DAOFactory factory = DAOFactory.getInstance();
		VooDAO dao = factory.getVooDAO();
		dao.excluir(codigo);
	}

}
