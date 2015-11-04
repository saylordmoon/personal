package org.apci.aplicaciones.dao;

import java.util.List;

import org.apci.aplicaciones.models.Paquete;
import org.apci.aplicaciones.services.IPaqueteService;
import org.apci.aplicaciones.util.dao.BaseDAO;

public class PaqueteDAO extends BaseDAO implements IPaqueteService {

	@Override
	public Paquete add(Paquete pPaquete) {
		
		int paqueteId = insert(pPaquete);
		
		pPaquete.setPaqueteId(paqueteId);
		
		return pPaquete;
	}

	public List<Paquete> getByPlanID(int pPlanId) {
		
		return selectWhere(Paquete.class,"PlanId",pPlanId);
	}

}
