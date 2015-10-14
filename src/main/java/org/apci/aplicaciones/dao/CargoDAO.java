package org.apci.aplicaciones.dao;

import java.util.List;

import org.apci.aplicaciones.models.tipo.Cargo;
import org.apci.aplicaciones.services.ICargoService;
import org.apci.aplicaciones.util.dao.BaseDAO;

public class CargoDAO extends BaseDAO implements ICargoService {

	public List<Cargo> get() {
		
		return select(Cargo.class);
	}

}
