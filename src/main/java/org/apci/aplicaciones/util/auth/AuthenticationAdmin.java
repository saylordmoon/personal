package org.apci.aplicaciones.util.auth;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.ws.rs.WebApplicationException;

import org.apci.aplicaciones.models.Administrador;
import org.apci.aplicaciones.util.HttpUtil;

public class AuthenticationAdmin {
	
	public static final String SESSION_NAME = "989808dd9088f8528697b629022993e8";
	public static final String LOGIN_URL = "/loginadmin";
	public static final String LOGOUT_URL = "/loginadmin";
	public static final String LOGIN_PAGE = "admin/index.html";
	public static final String LOGGED_PAGE = "app/admin.html";
	private static Administrador usuario;
	
	public static boolean isLoggedIn(HttpServletRequest pRequest)
	{
		HttpSession session = pRequest.getSession();

		return  (session.getAttribute(SESSION_NAME) != null && session.isNew() && session != null);
	}
	
	public static Administrador getUser(HttpServletRequest pRequest)
	{
		HttpSession session = pRequest.getSession(true);
		usuario = (Administrador)session.getAttribute(SESSION_NAME);
		if (usuario == null ) {
			throw new WebApplicationException(HttpUtil.StatusCode.UNAUTHORIZED.value());
		}
		
		return usuario;
	}
}
