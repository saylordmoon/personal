package org.apci.aplicaciones.dao;

import java.util.List;

import org.apci.aplicaciones.util.dao.BaseDAO;
import org.apci.aplicaciones.models.Distrito;
import org.apci.aplicaciones.models.Provincia;
import org.apci.aplicaciones.services.IProvinciaService;

public class ProvinciaDAO extends BaseDAO implements IProvinciaService{

	public List<Provincia> get() {
		return super.select(Provincia.class);
	}

	public List<Distrito> distritos(int pProvinciaId) {
		return query("select * from VwDistrito where provinciaId = ?",Distrito.class, pProvinciaId);
	}

}
