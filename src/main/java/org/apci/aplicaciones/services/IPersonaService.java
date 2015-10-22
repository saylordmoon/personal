package org.apci.aplicaciones.services;

import org.apci.aplicaciones.models.Persona;

public interface IPersonaService {
	
	Persona add(Persona pPersona);
	
	Persona get(int pPersonaId);
	
	boolean update(Persona pPersona);
	
}
