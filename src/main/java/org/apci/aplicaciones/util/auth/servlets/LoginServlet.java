package org.apci.aplicaciones.util.auth.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apci.aplicaciones.util.auth.Authentication;
import org.apci.aplicaciones.dao.UsuarioDAO;
import org.apci.aplicaciones.models.Usuario;
import org.apci.aplicaciones.services.IUsuarioService;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private IUsuarioService usuario;
	
	public LoginServlet() {
     
		super();
		usuario = new UsuarioDAO();
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		if (Authentication.isLoggedIn(request)) {
			
			response.sendRedirect(Authentication.LOGGED_PAGE);
		}
		else {
			
			response.sendRedirect(Authentication.LOGIN_PAGE);
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		String username = request.getParameter("usuario").trim();
		String password = request.getParameter("password").trim();
		
		if (usuario.validate(username, password)) {
			
			HttpSession session = request.getSession();
			Usuario user = usuario.getByName(username);
			session.setAttribute(Authentication.SESSION_NAME,user);
			response.sendRedirect(Authentication.LOGGED_PAGE);
		}
		else {
			
			doGet(request, response);
		}
			
	}
}
