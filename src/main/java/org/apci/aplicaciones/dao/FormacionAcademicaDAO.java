package org.apci.aplicaciones.dao;

import java.util.List;

import org.apci.aplicaciones.models.FormacionAcademica;
import org.apci.aplicaciones.services.IFormacionAcademicaService;
import org.apci.aplicaciones.util.dao.BaseDAO;

public class FormacionAcademicaDAO extends BaseDAO implements IFormacionAcademicaService {

	public FormacionAcademica add(FormacionAcademica pFormacionAcademica) {
		
		int formacionAcademicaId = insert(pFormacionAcademica);
		
		pFormacionAcademica.setFormacionAcademicaId(formacionAcademicaId);
		
		return pFormacionAcademica;
	}

	@Override
	public List<FormacionAcademica> get(int pPersonaId) {
		
		return selectWhere(FormacionAcademica.class,"PersonaId",pPersonaId);
	}

	@Override
	public boolean remove(FormacionAcademica pFormacionAcademica) {

		return super.delete(pFormacionAcademica);
	}

}
