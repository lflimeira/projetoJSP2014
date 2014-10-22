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

import model.Aeronave;
import model.AeronaveException;
import model.Voo;
import model.VooException;
import to.AeronaveTO;
import to.VooTO;

/**
 * Servlet implementation class ControllerCliente
 */
@WebServlet("/ControllerCliente")
public class ControllerCliente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerCliente() {
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
		if(operacao.equals("cadastrar")){
			
			String subOperacao = request.getParameter("subOperacao");
			
			
			//Para cadastrar de vez
			if(subOperacao.equals("cadastra")){
				//Cria objeto TO de Voo
				VooTO vooTO = new VooTO();
				
				//Coloca todas as informações no  Objeto TO
				vooTO.setCodigo(Integer.parseInt(request.getParameter("codigo")));
				vooTO.setOrigem((String) request.getParameter("origem"));
				vooTO.setDestino((String) request.getParameter("destino"));
				vooTO.setData((String) request.getParameter("data"));
				vooTO.setHora((String) request.getParameter("hora"));
				vooTO.setSituacao(request.getParameter("situacao"));
				vooTO.setAeronave(Integer.parseInt(request.getParameter("aeronave")));
				vooTO.setEscala1(request.getParameter("escala1"));
				vooTO.setEscala2(request.getParameter("escala2"));
				
				
				//Iniciando os dados da TO na classe de Negócio
				Voo voo = new Voo(vooTO);
				
				//Inicia processo de cadastrar
				try {
					voo.cadastrar();
				} catch (VooException e) {
					e.printStackTrace();
				}
				
				//Inicia o processo de listagem de aeronave
				AeronaveTO aeronaveTO = new AeronaveTO();
				Aeronave aeronave = new Aeronave(aeronaveTO);
				List<AeronaveTO> lista = new ArrayList<AeronaveTO>();
				try {
					lista = aeronave.consultar();
				} catch (AeronaveException e) {
					e.printStackTrace();
				}
				
				
				//Aciona mensagem de que cadastro foi concluido
				request.setAttribute("mensagem", "sucesso");
				
				//Lista as Aeronave denovo
				request.setAttribute("lista", lista);
				//Redireciona para pagina de cadastro
				request.getRequestDispatcher("voo_cadastrar.jsp").forward(request, response);
				
				//Fim de cadastro
			}
		}
		
	}

}
