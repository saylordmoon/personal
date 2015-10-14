package org.apci.aplicaciones.resources;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.apci.aplicaciones.dao.PaisDAO;
import org.apci.aplicaciones.models.Pais;
import org.apci.aplicaciones.services.IPaisService;

@Path("pais")
public class PaisResource {
	
	IPaisService pais;
	
	public PaisResource() {
		pais = new PaisDAO();
	}
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<Pais> get() {
		
		return pais.get();
	}
}
