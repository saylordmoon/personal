package org.apci.aplicaciones.services;

import org.apci.aplicaciones.models.Usuario;

public interface IUsuarioService {	
	Usuario getByName(String pUsuario);

	Boolean validate(String pUsuario,String pHash);

}