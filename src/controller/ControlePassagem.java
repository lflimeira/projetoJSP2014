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
			session.setAttribute("opcao", request.getParameter("opcao"));
			
			if(session.getAttribute("opcao").equals("idaVolta")){
				session.setAttribute("voo", "ida");
			}
			
			response.sendRedirect("passagem_voo.jsp");
						
			
		}
		if(operacao.equals("escolhaVolta")){
			
			HttpSession session = request.getSession();
			session.setAttribute("codigoVooIda", request.getParameter("codigoVoo"));
			session.setAttribute("voo", "volta");
			
			String codigoVooIda = session.getAttribute("codigoVooIda").toString();
			int codigo = Integer.parseInt(codigoVooIda);
			
			VooTO vooTO = null;
			VooTO a = new VooTO();
			Voo voo = new Voo(a);
			try{
				vooTO = voo.consultaUnica(codigo);
			}catch(VooException e){
				e.printStackTrace();
			}		
			VooTO vooTO2 = new VooTO();
			Voo voo2 = new Voo(vooTO2);
			List<VooTO> lista = new ArrayList<VooTO>();
			try {
				lista = voo2.consultaVooVolta(vooTO.getOrigem(),vooTO.getDestino());
			} catch (VooException e) {
				e.printStackTrace();
			}
			session.setAttribute("lista", lista);
			response.sendRedirect("passagem_voo.jsp");
			
		}
		if(operacao.equals("cadastroPassageiro")){
			HttpSession session = request.getSession();
			session.setAttribute("codigoVooVolta", request.getParameter("codigoVoo"));
			response.sendRedirect("cad_cliente.jsp");
			
		}
	}

}
