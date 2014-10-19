package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Voo;
import model.VooException;
import to.VooTO;

@WebServlet("/ControleVoo")
public class ControleVoo extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ControleVoo() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		executa(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		executa(request, response);
	}
	
	protected void executa(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Ve qual operação o usuario solicitou
		String operacao = (String) request.getParameter("operacao"); 
		
		//Se vier da pagina de cadastro
		if(operacao.equals("cadastrar")){
			
			//Cria objeto TO de Aeronave
			VooTO vooTO = new VooTO();
			
			//Coloca todas as informações no  Objeto TO
			vooTO.setCodigo(Integer.parseInt(request.getParameter("codigo")));
			vooTO.setOrigem((String) request.getParameter("origem"));
			vooTO.setDestino((String) request.getParameter("destino"));
			vooTO.setData((String) request.getParameter("data"));
			vooTO.setHora((String) request.getParameter("hora"));
			vooTO.setSituacao(request.getParameter("status"));
			vooTO.setEscala1(request.getParameter("escala1"));
			vooTO.setEscala2(request.getParameter("escala2"));
			vooTO.setAeronave(request.getParameter("aeronave"));
			
			//Iniciando os dados da TO na classe de Negócio
			Voo voo = new Voo(vooTO);
			
			//Inicia processo de cadastrar
			try {
				voo.cadastrar();
			} catch (VooException e) {
				e.printStackTrace();
			}
			
			//Aciona mensagem de que cadastro foi concluido
			request.setAttribute("mensagem", "sucesso");
			
			//Redireciona para pagina de cadastro
			request.getRequestDispatcher("voo_cadastrar.jsp").forward(request, response);
			
			//Fim de cadastro		
		}
		
		if(operacao.equals("consultar")){
			
			VooTO vooTO = new VooTO();
			Voo voo = new Voo(vooTO);
			List<VooTO> lista = new ArrayList<VooTO>();
			try {
				lista = voo.consultar();
			} catch (VooException e) {
				e.printStackTrace();
			}
			
			request.setAttribute("lista", lista);
			request.getRequestDispatcher("voo_consultar.jsp").forward(request, response);
		
		}
		
		if(operacao.equals("alterar")){
			
			//Determina todo o processo de Alteração
			String subOperacao = request.getParameter("subOperacao");
			
			//Nessa condição ele efetua uma consulta trazendo a aeronave pesquisada e manda para a pagina de alteracao
			if(subOperacao.equals("form")){
				
				int codigo = Integer.parseInt(request.getParameter("codigo"));
				
				VooTO vooTO = null;
				VooTO a = new VooTO();
				Voo voo = new Voo(a);
				try{
					vooTO = voo.consultaUnica(codigo);
				}catch(VooException e){
					e.printStackTrace();
				}
				
				HttpSession session = request.getSession();
				session.setAttribute("vooTO", vooTO);
				response.sendRedirect("voo_alterar.jsp");
				
			}

			if(subOperacao.equals("alterar")){
				VooTO vooTO = new VooTO();
				
				vooTO.setCodigo(Integer.parseInt(request.getParameter("codigo")));
				vooTO.setOrigem((String) request.getParameter("origem"));
				vooTO.setDestino((String) request.getParameter("destino"));
				vooTO.setData((String) request.getParameter("data"));
				vooTO.setHora((String) request.getParameter("hora"));
				vooTO.setSituacao((String) request.getParameter("situacao"));
				vooTO.setEscala1((String) request.getParameter("escala1"));
				vooTO.setEscala2((String) request.getParameter("escala2"));
				vooTO.setAeronave((String) request.getParameter("aeronave"));
				
				
				//Iniciando os dados da TO na classe de Negócio
				Voo voo = new Voo(vooTO);
				
				//Inicia processo de cadastrar
				try {
					voo.alterar(vooTO);
				} catch (VooException e) {
					e.printStackTrace();
				}
				
				//Redireciona para voltar para a pagina de consulta com a mensagem de alterado
				request.getRequestDispatcher("ControleVoo?operacao=alterar&subOperacao=alterado").forward(request, response);
			}
			//Retorna a pagina de consulta com a mensagem de voo alterada
			if(subOperacao.equals("alterado")){
				
				//Faz a consulta de novo para retornar 
				VooTO vooTO = new VooTO();
				Voo voo = new Voo(vooTO);
				List<VooTO> lista = new ArrayList<VooTO>();
				try {
					lista = voo.consultar();
				} catch (VooException e) {
					e.printStackTrace();
				}
				
				request.setAttribute("lista", lista);//Envia lista para pagina de consulta
				request.setAttribute("mensagem", "alterado");//Liga a mensagem de alteração efetuada com sucesso
				request.getRequestDispatcher("voo_consultar.jsp").forward(request, response);
				
			}		
			
		}
		if(operacao.equals("excluir")){
			//Determina todo o processo de Alteração
			String subOperacao = request.getParameter("subOperacao");
			
			//Faz uma consulta para retornar dados do voo para pagina de exclusão
			if(subOperacao.equals("form")){
				int codigo = Integer.parseInt(request.getParameter("codigo"));
				
				VooTO vooTO = null;
				VooTO a = new VooTO();
				Voo voo = new Voo(a);
				try{
					vooTO = voo.consultaUnica(codigo);
				}catch(VooException e){
					e.printStackTrace();
				}
				
				HttpSession session = request.getSession();
				session.setAttribute("vooTO", vooTO);
				response.sendRedirect("voo_excluir.jsp");
			}
			//Exclui voo no Banco de Dados
			if(subOperacao.equals("excluir")){
				//Pega o Codigo
				int codigo = Integer.parseInt(request.getParameter("codigo"));
				
				VooTO a = new VooTO();
				Voo voo = new Voo(a);
				
				//Inicia processo de cadastrar
				try {
					voo.excluir(codigo);
				} catch (VooException e) {
					e.printStackTrace();
				}
				
				//Redireciona para voltar para a pagina de consulta com a mensagem de alterado
				request.getRequestDispatcher("ControleVoo?operacao=excluir&subOperacao=excluido").forward(request, response);
			}
			if(subOperacao.equals("excluido")){
				
				//Faz a consulta de novo para retornar 
				VooTO vooTO = new VooTO();
				Voo voo = new Voo(vooTO);
				List<VooTO> lista = new ArrayList<VooTO>();
				try {
					lista = voo.consultar();
				} catch (VooException e) {
					e.printStackTrace();
				}
				
				request.setAttribute("lista", lista);//Envia lista para pagina de consulta
				request.setAttribute("mensagem", "excluido");//Liga a mensagem de exclusao efetuada com sucesso
				request.getRequestDispatcher("voo_consulta.jsp").forward(request, response);
				
			}	
		}
	}

}
