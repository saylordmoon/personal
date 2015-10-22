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

import org.apci.aplicaciones.dao.CapacitacionDAO;
import org.apci.aplicaciones.models.Capacitacion;
import org.apci.aplicaciones.models.Usuario;
import org.apci.aplicaciones.services.ICapacitacionService;
import org.apci.aplicaciones.util.auth.Authentication;

@Path("capacitacion")
public class CapacitacionResource {

	ICapacitacionService capacitacion;
	
	public CapacitacionResource() {
		capacitacion = new CapacitacionDAO();
	}
	
	@POST
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	public Capacitacion add(JAXBElement<Capacitacion> pCapacitacion, @Context HttpServletRequest pRequest) {
		
		Usuario usuario = Authentication.getUser(pRequest);
		
		Capacitacion cap = pCapacitacion.getValue();
		
		cap.setPersonaId(usuario.getPersonaId());
		
		return capacitacion.add(cap);
	}
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<Capacitacion> get(@Context HttpServletRequest pRequest){
		
		Usuario usuario = Authentication.getUser(pRequest);
		
		return capacitacion.get(usuario.getPersonaId());
	}
	
	@DELETE
	@Path("{CapacitacionId}")
	public Response delete(@Context HttpServletRequest pRequest,@PathParam("CapacitacionId") int pCapacitacionId) {
		
		Authentication.getUser(pRequest);
		
		Capacitacion Capacitacion = new Capacitacion();
		Capacitacion.setCapacitacionId(pCapacitacionId);
		
		if (capacitacion.remove(Capacitacion))
			return Response.status(Response.Status.OK).build();
		
		return Response.status(Response.Status.NOT_FOUND).build();
	}
}
