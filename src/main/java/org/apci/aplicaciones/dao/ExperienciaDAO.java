package org.apci.aplicaciones.dao;

import java.util.List;

import org.apci.aplicaciones.models.Experiencia;
import org.apci.aplicaciones.services.IExperienciaService;
import org.apci.aplicaciones.util.dao.BaseDAO;

public class ExperienciaDAO extends BaseDAO implements IExperienciaService {

	
	public Experiencia add(Experiencia pExperiencia) {
		
		int experienciaId = insert(pExperiencia);
		
		pExperiencia.setExperienciaId(experienciaId);
		
		return pExperiencia;
	}

	@Override
	public boolean remove(Experiencia pExperiencia) {
		
		return super.delete(pExperiencia);
	}

	@Override
	public List<Experiencia> get(int pPersonaId) {
		
		return selectWhere(Experiencia.class,"PersonaId",pPersonaId);
	}

}
