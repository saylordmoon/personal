package org.apci.aplicaciones.resources;

import java.util.List;

import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.xml.bind.JAXBElement;

import org.apci.aplicaciones.dao.CapacitacionDAO;
import org.apci.aplicaciones.dao.ExperienciaDAO;
import org.apci.aplicaciones.dao.FormacionAcademicaDAO;
import org.apci.aplicaciones.dao.PersonaDAO;
import org.apci.aplicaciones.dao.PersonaIdiomaDAO;
import org.apci.aplicaciones.models.Capacitacion;
import org.apci.aplicaciones.models.Experiencia;
import org.apci.aplicaciones.models.FormacionAcademica;
import org.apci.aplicaciones.models.Persona;
import org.apci.aplicaciones.models.PersonaIdioma;
import org.apci.aplicaciones.services.ICapacitacionService;
import org.apci.aplicaciones.services.IExperienciaService;
import org.apci.aplicaciones.services.IFormacionAcademicaService;
import org.apci.aplicaciones.services.IPersonaIdiomaService;
import org.apci.aplicaciones.services.IPersonaService;

@Path("persona")
public class PersonaResource {
	
	IPersonaService persona;
	IExperienciaService experiencia;
	IFormacionAcademicaService formacion;
	IPersonaIdiomaService idioma;
	ICapacitacionService capacitacion;
	
	public PersonaResource() {

		persona = new PersonaDAO();
		experiencia = new ExperienciaDAO();
		formacion = new FormacionAcademicaDAO();
		idioma = new PersonaIdiomaDAO();
		capacitacion = new CapacitacionDAO();
	}
	
	@POST
	@Produces(MediaType.APPLICATION_JSON)
	public Persona add(JAXBElement<Persona> pPersona){
		
		return persona.add(pPersona.getValue());
	}
	
	@POST
	@Path("experiencia")
	public Response addExperiencia(List<Experiencia> pExperiencias){
		
		for (Experiencia exp : pExperiencias){
			experiencia.add(exp);
		}
		return Response.status(Response.Status.OK).build();
	}
	
	
	@POST
	@Path("formacionacademica")
	public Response addFormacionAcademica(List<FormacionAcademica> pFormacionAcademica){
		
		for (FormacionAcademica formacionAcademica : pFormacionAcademica){
			formacion.add(formacionAcademica);
		}
		return Response.status(Response.Status.OK).build();
	}
	
	@POST
	@Path("idioma")
	public Response addIdioma(List<PersonaIdioma> pPersonaIdioma){
		
		for (PersonaIdioma personaIdioma : pPersonaIdioma){
			idioma.add(personaIdioma);
		}
		return Response.status(Response.Status.OK).build();
	}
	
	@POST
	@Path("capacitacion")
	public Response addCapacitacion(List<Capacitacion> pCapacitacion){
		
		for (Capacitacion cap : pCapacitacion){
			capacitacion.add(cap);
		}
		return Response.status(Response.Status.OK).build();
	}
}
