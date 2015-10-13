package org.apci.aplicaciones.dao;

import java.util.List;

import org.apci.aplicaciones.models.tipo.TipoDocumento;
import org.apci.aplicaciones.services.ITipoDocumentoService;
import org.apci.aplicaciones.util.dao.BaseDAO;

public class TipoDocumentoDAO extends BaseDAO implements ITipoDocumentoService{

	
	public List<TipoDocumento> get() {
	
		return select(TipoDocumento.class);
	}

}