package org.apci.aplicaciones.dao;

import org.apci.aplicaciones.models.Persona;
import org.apci.aplicaciones.services.IPersonaService;
import org.apci.aplicaciones.util.dao.BaseDAO;

public class PersonaDAO extends BaseDAO implements IPersonaService {

	public Persona add(Persona pPersona) {
	
		int personaId = insert(pPersona);
		
		pPersona.setPersonaId(personaId);
		
		return pPersona;
	}
}
