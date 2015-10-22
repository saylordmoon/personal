package org.apci.aplicaciones.services;

import java.util.List;

import org.apci.aplicaciones.models.FormacionAcademica;

public interface IFormacionAcademicaService {
	
	FormacionAcademica add(FormacionAcademica pFormacionAcademica);
	
	List<FormacionAcademica> get(int pPersonaId);
	
	boolean remove(FormacionAcademica pFormacionAcademica);
}
