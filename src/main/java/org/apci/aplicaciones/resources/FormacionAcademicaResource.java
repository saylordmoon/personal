package org.apci.aplicaciones.resources;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.xml.bind.JAXBElement;

import org.apci.aplicaciones.dao.FormacionAcademicaDAO;
import org.apci.aplicaciones.models.FormacionAcademica;
import org.apci.aplicaciones.models.Usuario;
import org.apci.aplicaciones.services.IFormacionAcademicaService;
import org.apci.aplicaciones.util.auth.Authentication;

@Path("formacionacademica")
public class FormacionAcademicaResource {

	IFormacionAcademicaService formacion;
	
	public FormacionAcademicaResource() {
		formacion = new FormacionAcademicaDAO();
		System.out.println("--------");
	}
	
	@POST
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	public FormacionAcademica add(JAXBElement<FormacionAcademica> pFormacionAcademica, @Context HttpServletRequest pRequest) {
		
		Usuario usuario = Authentication.getUser(pRequest);
		
		FormacionAcademica formacionAcademica = pFormacionAcademica.getValue();
		
		formacionAcademica.setPersonaId(usuario.getPersonaId());
		
		return formacion.add(formacionAcademica);
	}
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<FormacionAcademica> get(@Context HttpServletRequest pRequest){
		
		Usuario usuario = Authentication.getUser(pRequest);
		
		return formacion.get(usuario.getPersonaId());
	}
	
	@DELETE
	@Path("{FormacionAcademicaId}")
	public Response delete(@Context HttpServletRequest pRequest,@PathParam("FormacionAcademicaId") int pFormacionAcademicaId) {
		
		Authentication.getUser(pRequest);
		
		FormacionAcademica formacionAcademica = new FormacionAcademica();
		formacionAcademica.setFormacionAcademicaId(pFormacionAcademicaId);
		
		if (formacion.remove(formacionAcademica))
			return Response.status(Response.Status.OK).build();
		
		return Response.status(Response.Status.NOT_FOUND).build();
	}
}
