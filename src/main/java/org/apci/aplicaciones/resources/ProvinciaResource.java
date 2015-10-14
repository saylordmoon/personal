package org.apci.aplicaciones.resources;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.apci.aplicaciones.dao.ProvinciaDAO;
import org.apci.aplicaciones.models.Distrito;
import org.apci.aplicaciones.models.Provincia;
import org.apci.aplicaciones.services.IProvinciaService;

@Path("/provincia")
public class ProvinciaResource {
	
	IProvinciaService provincia = null;
	
	public ProvinciaResource() {
		provincia = new ProvinciaDAO();
	}

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<Provincia> get()
	{
		return provincia.get();
	}
	
	@GET
	@Path("/{ProvinciaId}/distrito")
	@Produces(MediaType.APPLICATION_JSON)
	public List<Distrito> distritos(@PathParam("ProvinciaId") int pProvinciaId)
	{
		return provincia.distritos(pProvinciaId);
	}
	
}