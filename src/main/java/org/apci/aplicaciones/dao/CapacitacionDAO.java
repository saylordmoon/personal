package org.apci.aplicaciones.dao;

import org.apci.aplicaciones.models.Capacitacion;
import org.apci.aplicaciones.services.ICapacitacionService;
import org.apci.aplicaciones.util.dao.BaseDAO;

public class CapacitacionDAO extends BaseDAO implements ICapacitacionService {

	
	public Capacitacion add(Capacitacion pCapacitacion) {
		
		int capacitacionId = insert(pCapacitacion);
		
		pCapacitacion.setCapacitacionId(capacitacionId);
		
		return pCapacitacion;
	}

}
