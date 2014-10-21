package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
			
			request.setAttribute("lista", lista);
			request.getRequestDispatcher("passagem_voo.jsp").forward(request, response);
						
			
		}
	}

}
