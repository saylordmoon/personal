package org.apci.aplicaciones.services;

import java.util.List;

import org.apci.aplicaciones.models.Departamento;
import org.apci.aplicaciones.models.Provincia;

public interface IDepartamentoService {
	
	List<Departamento> get();
	
	List<Provincia> provincias(int pDepartamentoId);
}
