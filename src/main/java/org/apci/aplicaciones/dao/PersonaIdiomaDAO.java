package org.apci.aplicaciones.dao;

import java.util.List;

import org.apci.aplicaciones.models.PersonaIdioma;
import org.apci.aplicaciones.services.IPersonaIdiomaService;
import org.apci.aplicaciones.util.dao.BaseDAO;

public class PersonaIdiomaDAO extends BaseDAO implements IPersonaIdiomaService {

	public PersonaIdioma add(PersonaIdioma pPersonaIdioma) {
		
		int personaIdiomaId = insert(pPersonaIdioma);
		
		pPersonaIdioma.setPersonaIdiomaId(personaIdiomaId);
		
		return pPersonaIdioma;
	}

	@Override
	public List<PersonaIdioma> get(int pPersonaId) {

		return selectWhere(PersonaIdioma.class,"PersonaId",pPersonaId);
	}

	@Override
	public boolean remove(PersonaIdioma pPersonaIdioma) {
		
		return super.delete(pPersonaIdioma);
	}

}
