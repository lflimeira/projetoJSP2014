package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Usuario;

@WebServlet("/loginControler")
public class LoginControler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginControler() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		
		Usuario user = null;
		try {
			user = new Usuario(login, senha);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if(user.realizarLogin()){
			HttpSession session = request.getSession();
			session.setAttribute("usuario",user);
			request.setAttribute("msg", "");
			request.getRequestDispatcher("home.jsp").forward(request, response);
		}else{
			request.setAttribute("msg", "out.print(bundle.getString(" + "tela.login.mensagem.invalidos" + "));");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
			
		
	}

}
