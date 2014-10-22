package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Cliente;
import model.ClienteException;
import to.ClienteTO;

/**
 * Servlet implementation class ControllerResponsavel
 */
@WebServlet("/controllerResponsavel")
public class ControllerResponsavel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerResponsavel() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		executa(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		executa(request, response);
	}
	
	
	protected void executa(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Ve qual operação o usuario solicitou
		String operacao = (String) request.getParameter("operacao"); 
		
		//Se vier da pagina de cadastro
		if(operacao.equals("cadastrar_resposavel")){
			
			HttpSession session = request.getSession();
			int qtd_adultos = Integer.parseInt(session.getAttribute("adultos").toString());
			int qtd_criancas = Integer.parseInt(session.getAttribute("criancas").toString());
			int qtd_bebes = Integer.parseInt(session.getAttribute("bebes").toString());
			
			ArrayList<ClienteTO> clientes = new ArrayList<ClienteTO>();
			
			for(int i = 1; i <= qtd_adultos; i++){
				
				ClienteTO clienteTO = new ClienteTO();
				
				clienteTO.setTipo(request.getParameter("tipo"+i));
				clienteTO.setTratamento(request.getParameter("form_tratamento"+i));
				clienteTO.setNome(request.getParameter("nome"+i));
				clienteTO.setSobrenome(request.getParameter("sobrenome"+i));
				clienteTO.setDataNascimento(request.getParameter("data_nasci"+i));
				
				clientes.add(clienteTO);
				
			}
			
			for(int i = 1; i <= qtd_criancas; i++){
				
				ClienteTO clienteTO = new ClienteTO();
				
				clienteTO.setTipo(request.getParameter("tipo_cri"+i));
				clienteTO.setTratamento(request.getParameter("form_tratamento_cri"+i));
				clienteTO.setNome(request.getParameter("nome_cri"+i));
				clienteTO.setSobrenome(request.getParameter("sobrenome_cri"+i));
				clienteTO.setDataNascimento(request.getParameter("data_nasci_cri"+i));
				
				clientes.add(clienteTO);
				
			}
			
			for(int i = 1; i <= qtd_bebes; i++){
				
				ClienteTO clienteTO = new ClienteTO();
				
				clienteTO.setTipo(request.getParameter("tipo_be"+i));
				clienteTO.setTratamento(request.getParameter("form_tratamento_be"+i));
				clienteTO.setNome(request.getParameter("nome_be"+i));
				clienteTO.setSobrenome(request.getParameter("sobrenome_be"+i));
				clienteTO.setDataNascimento(request.getParameter("data_nasci_be"+i));
				
				clientes.add(clienteTO);
				
			}
			
			
			for(ClienteTO clienteTO : clientes){
				
				//Iniciando os dados da TO na classe de Negócio
				Cliente cliente = new Cliente(clienteTO);
				
				//Inicia processo de cadastrar
				try {
					clienteTO.setIdCliente(cliente.cadastrar());
				} catch (ClienteException e) {
					e.printStackTrace();
				}
			
			}
			
			//Aciona mensagem de que cadastro foi concluido
			request.setAttribute("mensagem", "Clientes cadastrados com sucesso, "
								+ "cadastre um responsável para continuar.");
			
			session.setAttribute("clientes", clientes);
			//Redireciona para pagina de cadastro
			request.getRequestDispatcher("responsavel.jsp").forward(request, response);
			
			//Fim de cadastro
		}
		
	}


}
