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

import org.apci.aplicaciones.dao.ExperienciaDAO;
import org.apci.aplicaciones.models.Experiencia;
import org.apci.aplicaciones.models.Usuario;
import org.apci.aplicaciones.services.IExperienciaService;
import org.apci.aplicaciones.util.auth.Authentication;

@Path("experiencia")
public class ExperienciaResource {

	IExperienciaService experiencia;
	
	public ExperienciaResource() {
		experiencia = new ExperienciaDAO();
	}
	
	@POST
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	public Experiencia add(JAXBElement<Experiencia> pExperiencia, @Context HttpServletRequest pRequest) {
		
		Usuario usuario = Authentication.getUser(pRequest);
		
		Experiencia cap = pExperiencia.getValue();
		
		cap.setPersonaId(usuario.getPersonaId());
		
		return experiencia.add(cap);
	}
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<Experiencia> get(@Context HttpServletRequest pRequest){
		
		Usuario usuario = Authentication.getUser(pRequest);
		
		return experiencia.get(usuario.getPersonaId());
	}
	
	@DELETE
	@Path("{ExperienciaId}")
	public Response delete(@Context HttpServletRequest pRequest,@PathParam("ExperienciaId") int pExperienciaId) {
		
		Authentication.getUser(pRequest);
		
		Experiencia exp = new Experiencia();
		exp.setExperienciaId(pExperienciaId);
				
		if (experiencia.remove(exp))
			return Response.status(Response.Status.OK).build();
		
		return Response.status(Response.Status.NOT_FOUND).build();
	}
}
