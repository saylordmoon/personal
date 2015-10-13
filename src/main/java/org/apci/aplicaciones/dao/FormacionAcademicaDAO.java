package org.apci.aplicaciones.dao;

import org.apci.aplicaciones.models.FormacionAcademica;
import org.apci.aplicaciones.services.IFormacionAcademicaService;
import org.apci.aplicaciones.util.dao.BaseDAO;

public class FormacionAcademicaDAO extends BaseDAO implements IFormacionAcademicaService {

	public FormacionAcademica add(FormacionAcademica pFormacionAcademica) {
		
		int formacionAcademicaId = insert(pFormacionAcademica);
		
		pFormacionAcademica.setFormacionAcademicaId(formacionAcademicaId);
		
		return pFormacionAcademica;
	}

}
