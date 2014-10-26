package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//importante nao alterar webservlet
@WebServlet("/ControleCheckin") 
public class ControleCheckin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ControleCheckin() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		executa(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		executa(request,response);		
	}
	protected void executa(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String operacao = request.getParameter("operacao");
		
		if(operacao.equals("mostraPassageiro")){
			
			
			
			
		}
		if(operacao.equals("finalizando")){
			try{
				request.setAttribute("mensagem", "sucesso");
				request.getRequestDispatcher("checkin_passagem.jsp").forward(request, response);
			}catch(Exception e){
				request.setAttribute("mensagem", "erro");
				request.getRequestDispatcher("checkin_passagem.jsp").forward(request, response);
			}
		}
	}
}
