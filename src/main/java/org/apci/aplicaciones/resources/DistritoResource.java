package org.apci.aplicaciones.resources;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.apci.aplicaciones.dao.DistritoDAO;
import org.apci.aplicaciones.models.Distrito;
import org.apci.aplicaciones.services.IDistritoService;

@Path("distrito")
public class DistritoResource {
	IDistritoService distrito;
	
	public DistritoResource() {
		distrito = new DistritoDAO();
	}
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("{DistritoId}")
	public Distrito get(@PathParam("DistritoId") int pDistritoId)
	{
		return distrito.getById(pDistritoId);
	}
}