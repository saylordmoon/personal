package org.apci.aplicaciones.dao;

import java.util.List;

import org.apci.aplicaciones.models.tipo.Grado;
import org.apci.aplicaciones.services.IGradoService;
import org.apci.aplicaciones.util.dao.BaseDAO;

public class GradoDAO extends BaseDAO implements IGradoService {

	public List<Grado> get() {
		
		return select(Grado.class);
	}

}
