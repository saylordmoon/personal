package org.apci.aplicaciones.dao;

import org.apci.aplicaciones.models.Experiencia;
import org.apci.aplicaciones.services.IExperienciaService;
import org.apci.aplicaciones.util.dao.BaseDAO;

public class ExperienciaDAO extends BaseDAO implements IExperienciaService {

	
	public Experiencia add(Experiencia pExperiencia) {
		
		int experienciaId = insert(pExperiencia);
		
		pExperiencia.setExperienciaId(experienciaId);
		
		return pExperiencia;
	}

}
