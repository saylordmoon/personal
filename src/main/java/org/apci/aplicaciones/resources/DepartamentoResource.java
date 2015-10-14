package org.apci.aplicaciones.resources;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.apci.aplicaciones.dao.DepartamentoDAO;
import org.apci.aplicaciones.models.Departamento;
import org.apci.aplicaciones.models.Provincia;
import org.apci.aplicaciones.services.IDepartamentoService;

@Path("/departamento")
public class DepartamentoResource {
	IDepartamentoService departamento = null;
	
	public DepartamentoResource() 
	{
		departamento = new DepartamentoDAO();
	}

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<Departamento> get()
	{
		return departamento.get();
	}
	
	@GET
	@Path("/{DepartamentoId}/provincia")
	@Produces(MediaType.APPLICATION_JSON)
	public List<Provincia> provincias(@PathParam("DepartamentoId") int pDepartamentoId)
	{
		return departamento.provincias(pDepartamentoId);
	}
}