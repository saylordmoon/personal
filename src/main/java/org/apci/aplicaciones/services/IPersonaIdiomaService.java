package org.apci.aplicaciones.services;

import java.util.List;

import org.apci.aplicaciones.models.PersonaIdioma;

public interface IPersonaIdiomaService {
	
	PersonaIdioma add(PersonaIdioma pPersonaIdioma);
	
	List<PersonaIdioma> get(int PersonaId);
	
	boolean remove(PersonaIdioma pPersonaIdioma);

}
