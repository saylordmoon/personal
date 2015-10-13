package org.apci.aplicaciones.dao;

import java.util.List;

import org.apci.aplicaciones.models.tipo.Sector;
import org.apci.aplicaciones.services.ISectorService;
import org.apci.aplicaciones.util.dao.BaseDAO;

public class SectorDAO extends BaseDAO implements ISectorService {

	public List<Sector> get() {
		
		return select(Sector.class);
	}

}
