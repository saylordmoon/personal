package org.apci.aplicaciones.dao;

import java.util.List;

import org.apci.aplicaciones.models.tipo.Area;
import org.apci.aplicaciones.services.IAreaService;
import org.apci.aplicaciones.util.dao.BaseDAO;

public class AreaDAO extends BaseDAO implements IAreaService {

	public List<Area> get() {
		
		return select(Area.class);
	}

}
