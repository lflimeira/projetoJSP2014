package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bd.AcessoBanco;
import model.Usuario;

/**
 * Servlet implementation class Login
 */
@WebServlet("/loginControler")
public class LoginControler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginControler() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
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
			request.setAttribute("msg", "Usuário ou Senha invalidos!");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
			
		
	}

}
