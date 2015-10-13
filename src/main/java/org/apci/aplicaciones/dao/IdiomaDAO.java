package org.apci.aplicaciones.dao;

import java.util.List;

import org.apci.aplicaciones.models.tipo.Idioma;
import org.apci.aplicaciones.services.IIdiomaService;
import org.apci.aplicaciones.util.dao.BaseDAO;

public class IdiomaDAO extends BaseDAO implements IIdiomaService {

	public List<Idioma> get() {

		return select(Idioma.class);
	}

}
