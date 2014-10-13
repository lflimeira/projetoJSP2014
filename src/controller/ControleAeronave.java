package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Aeronave;
import model.AeronaveException;
import to.AeronaveTO;

@WebServlet("/ControleAeronave")
public class ControleAeronave extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ControleAeronave() {
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
			AeronaveTO aeronaveTO = new AeronaveTO();
			
			//Coloca todas as informações no  Objeto TO
			aeronaveTO.setCodigo(Integer.parseInt(request.getParameter("codigo")));
			aeronaveTO.setNomeAeronave((String) request.getParameter("nomeAeronave"));
			aeronaveTO.setTipoAeronave((String) request.getParameter("tipoAeronave"));
			aeronaveTO.setFileiras(Integer.parseInt(request.getParameter("fileiras")));
			aeronaveTO.setColunas(Integer.parseInt(request.getParameter("colunas")));
			
			//Iniciando os dados da TO na classe de Negócio
			Aeronave aeronave = new Aeronave(aeronaveTO);
			
			//Inicia processo de cadastrar
			try {
				aeronave.cadastrar();
			} catch (AeronaveException e) {
				e.printStackTrace();
			}
			
			
			//Aciona mensagem de que cadastro foi concluido
			request.setAttribute("mensagem", "sucesso");
				
			//Redireciona para pagina de consulta
			request.getRequestDispatcher("cad_aeronave.jsp").forward(request, response);
			
			//Fim de cadastro		
		}
		
		if(operacao.equals("consultar")){
			
			AeronaveTO aeronaveTO = new AeronaveTO();
			Aeronave aeronave = new Aeronave(aeronaveTO);
			List<AeronaveTO> lista = new ArrayList<AeronaveTO>();
			try {
				lista = aeronave.consultar();
			} catch (AeronaveException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			request.setAttribute("lista", lista);
			request.getRequestDispatcher("consulta_aeronave.jsp").forward(request, response);
		
		}
	}

}
