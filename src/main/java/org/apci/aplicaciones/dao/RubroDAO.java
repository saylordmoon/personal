package org.apci.aplicaciones.dao;

import java.util.List;

import org.apci.aplicaciones.models.tipo.Rubro;
import org.apci.aplicaciones.services.IRubroService;
import org.apci.aplicaciones.util.dao.BaseDAO;

public class RubroDAO extends BaseDAO implements IRubroService {

	public List<Rubro> get() {
		
		return select(Rubro.class);
	}

}
