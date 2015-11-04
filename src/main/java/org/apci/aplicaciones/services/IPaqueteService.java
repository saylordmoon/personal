package org.apci.aplicaciones.services;

import java.util.List;

import org.apci.aplicaciones.models.Paquete;

public interface IPaqueteService {
	
	Paquete add(Paquete pPaquete);
	
	List<Paquete> getByPlanID(int pPlanId);
}
