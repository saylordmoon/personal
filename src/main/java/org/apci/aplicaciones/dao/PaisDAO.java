package org.apci.aplicaciones.dao;

import java.util.List;

import org.apci.aplicaciones.models.Pais;
import org.apci.aplicaciones.services.IPaisService;
import org.apci.aplicaciones.util.dao.BaseDAO;

public class PaisDAO extends BaseDAO implements IPaisService {

	public List<Pais> get() {
	
		return query("Select * from VwPais", Pais.class);
	}

}
