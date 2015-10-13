package org.apci.aplicaciones.dao;

import java.util.List;

import org.apci.aplicaciones.models.tipo.Nivel;
import org.apci.aplicaciones.services.INivelService;
import org.apci.aplicaciones.util.dao.BaseDAO;

public class NivelDAO extends BaseDAO implements INivelService{


	public List<Nivel> get() {

		return select(Nivel.class);
	}

}
