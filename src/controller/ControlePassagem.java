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

@WebServlet("/ControlePassagem")
public class ControlePassagem extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ControlePassagem() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		executa(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		executa(request, response);
	}
	protected void executa(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String operacao = request.getParameter("operacao");
		
		if(operacao.equals("escolheVoo")){
			
			VooTO vooTO = new VooTO();
			Voo voo = new Voo(vooTO);
			List<VooTO> lista = new ArrayList<VooTO>();
			try {
				lista = voo.consultar();
			} catch (VooException e) {
				e.printStackTrace();
			}
			
			HttpSession session = request.getSession();
			session.setAttribute("lista", lista);
			session.setAttribute("adultos", request.getParameter("adultos"));
			session.setAttribute("criancas", request.getParameter("criancas"));
			session.setAttribute("bebes", request.getParameter("bebes"));
			
			response.sendRedirect("passagem_voo.jsp");
						
			
		}
		if(operacao.equals("cadastroPassageiro")){
			
			HttpSession session = request.getSession();
			String adultos = (String) session.getAttribute("adultos");
			String criancas = (String) session.getAttribute("criancas");
			String bebes = (String) session.getAttribute("bebes");
			session.setAttribute("codigoVoo", request.getParameter("codigoVoo"));
			String codigoVoo = (String) session.getAttribute("codigoVoo");
			
			response.sendRedirect("cad_cliente.jsp");
		}
	}

}
