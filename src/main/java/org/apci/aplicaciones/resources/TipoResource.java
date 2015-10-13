package org.apci.aplicaciones.resources;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.apci.aplicaciones.dao.AreaDAO;
import org.apci.aplicaciones.dao.IdiomaDAO;
import org.apci.aplicaciones.dao.NivelDAO;
import org.apci.aplicaciones.dao.RubroDAO;
import org.apci.aplicaciones.dao.SectorDAO;
import org.apci.aplicaciones.dao.TipoDocumentoDAO;
import org.apci.aplicaciones.services.IAreaService;
import org.apci.aplicaciones.services.IIdiomaService;
import org.apci.aplicaciones.services.INivelService;
import org.apci.aplicaciones.services.IRubroService;
import org.apci.aplicaciones.services.ISectorService;
import org.apci.aplicaciones.services.ITipoDocumentoService;

@Path("tipo")
public class TipoResource {
	IAreaService area; 
	IIdiomaService idioma;
	INivelService nivel;
	IRubroService rubro;
	ISectorService sector;
	ITipoDocumentoService tipoDocumento;
	
	public TipoResource() {
		area = new AreaDAO();
		idioma = new IdiomaDAO();
		nivel = new NivelDAO();
		rubro = new RubroDAO();
		sector = new SectorDAO();
		tipoDocumento = new TipoDocumentoDAO();
	}

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("area")
	public List<?> area(){
		return area.get();
	}
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("idioma")
	public List<?> idioma(){
		return idioma.get();
	}
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("nivel")
	public List<?> nivel(){
		return nivel.get();
	}
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("rubro")
	public List<?> rubro(){
		return rubro.get();
	}
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("sector")
	public List<?> sector(){
		return sector.get();
	}
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("documento")
	public List<?> tipoDocumento(){
		return tipoDocumento.get();
	}
	
}
