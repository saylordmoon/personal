package org.apci.aplicaciones.dao;

import org.apci.aplicaciones.models.Distrito;
import org.apci.aplicaciones.services.IDistritoService;
import org.apci.aplicaciones.util.dao.BaseDAO;

public class DistritoDAO extends BaseDAO implements IDistritoService {

	public Distrito getById(int pDistritoId) {
		
		return query("select * from VwDistrito where DistritoId = ?",Distrito.class,pDistritoId).get(0);
	}
}
