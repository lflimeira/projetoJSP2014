package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Aeronave;
import model.AeronaveException;
import to.AeronaveTO;
/**
 * Servlet implementation class ControleAeronave
 */
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
			
			Aeronave aeronave = new Aeronave(aeronaveTO);
			try {
				aeronave.cadastrar();
				} catch (AeronaveException e) {
				e.printStackTrace();
			}
			
		}
	}

}
