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

import org.apci.aplicaciones.dao.PersonaIdiomaDAO;
import org.apci.aplicaciones.models.PersonaIdioma;
import org.apci.aplicaciones.models.Usuario;
import org.apci.aplicaciones.services.IPersonaIdiomaService;
import org.apci.aplicaciones.util.auth.Authentication;

@Path("personaidioma")
public class PersonaIdiomaResource {

	IPersonaIdiomaService idioma;
	
	public PersonaIdiomaResource() {
		idioma = new PersonaIdiomaDAO();
	}
	
	@POST
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	public PersonaIdioma add(JAXBElement<PersonaIdioma> pPersonaIdioma, @Context HttpServletRequest pRequest) {
		
		Usuario usuario = Authentication.getUser(pRequest);
		
		PersonaIdioma pidioma = pPersonaIdioma.getValue();
		
		pidioma.setPersonaId(usuario.getPersonaId());
		
		return idioma.add(pidioma);
	}
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<PersonaIdioma> get(@Context HttpServletRequest pRequest){
		
		Usuario usuario = Authentication.getUser(pRequest);
		
		return idioma.get(usuario.getPersonaId());
	}
	
	@DELETE
	@Path("{PersonaIdiomaId}")
	public Response delete(@Context HttpServletRequest pRequest,@PathParam("PersonaIdiomaId") int pPersonaIdiomaId) {
		
		Authentication.getUser(pRequest);
		
		PersonaIdioma personaIdioma = new PersonaIdioma();
		personaIdioma.setPersonaIdiomaId(pPersonaIdiomaId);
		
		if (idioma.remove(personaIdioma))
			return Response.status(Response.Status.OK).build();
		
		return Response.status(Response.Status.NOT_FOUND).build();
	}
}
