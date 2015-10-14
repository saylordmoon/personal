package org.apci.aplicaciones.dao;

import java.util.List;

import org.apci.aplicaciones.util.dao.BaseDAO;
import org.apci.aplicaciones.models.Departamento;
import org.apci.aplicaciones.models.Provincia;
import org.apci.aplicaciones.services.IDepartamentoService;

public class DepartamentoDAO extends BaseDAO implements IDepartamentoService {
	
	public List<Departamento> get() {
		return super.query("select * from VwDepartamento", Departamento.class);
	}

	public List<Provincia> provincias(int pDepartamentoId) {
		return super.query("select * from VwProvincia where departamentoId = ?", Provincia.class, pDepartamentoId);
	}
}
