package org.apci.aplicaciones.services;

import java.util.List;

import org.apci.aplicaciones.models.Distrito;
import org.apci.aplicaciones.models.Provincia;

public interface IProvinciaService {

	List<Provincia> get();
	
	List<Distrito> distritos(int pProvinciaId);
}
