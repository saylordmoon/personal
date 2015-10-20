package org.apci.aplicaciones.dao;

import java.util.List;

import javax.ws.rs.WebApplicationException;

import org.apci.aplicaciones.models.Persona;
import org.apci.aplicaciones.services.IPersonaService;
import org.apci.aplicaciones.util.HttpUtil;
import org.apci.aplicaciones.util.dao.BaseDAO;

public class PersonaDAO extends BaseDAO implements IPersonaService {

	public Persona add(Persona pPersona) {
	
		int personaId = insert(pPersona);
		
		pPersona.setPersonaId(personaId);
		
		return pPersona;
	}

	@Override
	public Persona get(int pPersonaId) {
		
		List<Persona> personas = selectById(Persona.class, pPersonaId);
		if (personas.size() < 0) {
			throw new WebApplicationException(HttpUtil.StatusCode.NO_CONTENT.value());
		}

		return personas.get(0);
	}
}