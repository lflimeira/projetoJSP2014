package model;

import java.util.List;
import dao.DaoFactory;
import dao.CadastroVooDAO;

public class Voo {

	VooTO dadosCadastro = null;
	
	public Voo(VooTO dadosCadastro) {
		this.dadosCadastro = dadosCadastro;
	}
	
	public void inserir() throws Exception{
		DaoFactory factory = DaoFactory.getInstance();
		CadastroVooDAO dao = factory.getCadastroDao();
		dao.inserir(dadosCadastro);
	}
	  
	public void alterar() throws Exception{
		DaoFactory factory = DaoFactory.getInstance();
		CadastroVooDAO dao = factory.getCadastroDao();
		dao.alterar(dadosCadastro);
	}
	
	public void excluir() throws Exception{
		DaoFactory factory = DaoFactory.getInstance();
		CadastroVooDAO dao = factory.getCadastroDao();
		dao.excluir(dadosCadastro);
	}
	
	public List<VooTO> consultar() throws Exception{
		DaoFactory factory = DaoFactory.getInstance();
		CadastroVooDAO dao = factory.getCadastroDao();
		return dao.consultar();
	}
}
