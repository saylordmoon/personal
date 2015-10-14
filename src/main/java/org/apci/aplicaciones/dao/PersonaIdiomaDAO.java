package org.apci.aplicaciones.dao;

import org.apci.aplicaciones.models.PersonaIdioma;
import org.apci.aplicaciones.services.IPersonaIdiomaService;
import org.apci.aplicaciones.util.dao.BaseDAO;

public class PersonaIdiomaDAO extends BaseDAO implements IPersonaIdiomaService {

	public PersonaIdioma add(PersonaIdioma pPersonaIdioma) {
		
		int personaIdiomaId = insert(pPersonaIdioma);
		
		pPersonaIdioma.setPersonaIdiomaId(personaIdiomaId);
		
		return pPersonaIdioma;
	}

}
