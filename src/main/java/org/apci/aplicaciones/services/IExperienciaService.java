package org.apci.aplicaciones.services;

import java.util.List;

import org.apci.aplicaciones.models.Experiencia;

public interface IExperienciaService {
	
	Experiencia add(Experiencia pExperiencia);
	
	boolean remove(Experiencia pExperiencia);
	
	List<Experiencia> get(int pPersonaId);

}
