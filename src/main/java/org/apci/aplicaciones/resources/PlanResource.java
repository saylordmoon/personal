package org.apci.aplicaciones.resources;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.xml.bind.JAXBElement;

import org.apci.aplicaciones.dao.PaqueteDAO;
import org.apci.aplicaciones.models.Paquete;
import org.apci.aplicaciones.services.IPaqueteService;

@Path("/plan")
public class PlanResource {
	IPaqueteService paquete;
	
	public PlanResource() {
		paquete = new PaqueteDAO();
	}
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/{PlanId}/paquete")
	public List<Paquete> get( @PathParam("PlanId") int pPlanId)
	{
		return paquete.getByPlanID(pPlanId);		
	}
	
	@POST
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	@Path("/{PlanId}/paquete")
	public Paquete addPaquete(JAXBElement<Paquete> pPaquete, @PathParam("PlanId") int pPlanId)
	{
		Paquete paq = pPaquete.getValue();
		paq.setPlanId(pPlanId);
		return paquete.add(paq);
	}
}