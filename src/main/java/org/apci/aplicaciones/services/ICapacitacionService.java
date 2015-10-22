package org.apci.aplicaciones.services;

import java.util.List;

import org.apci.aplicaciones.models.Capacitacion;

public interface ICapacitacionService {
	
	Capacitacion add(Capacitacion pCapacitacion);
	
	boolean remove(Capacitacion pCapacitacion);
	
	List<Capacitacion> get(int pPersonaId);

}
