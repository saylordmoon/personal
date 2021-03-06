package org.apci.aplicaciones.dao;

import java.util.List;

import org.apci.aplicaciones.util.dao.BaseDAO;
import org.apci.aplicaciones.models.Persona;
import org.apci.aplicaciones.models.Usuario;
import org.apci.aplicaciones.services.IUsuarioService;

public class UsuarioDAO extends BaseDAO implements IUsuarioService {
	
	@Override
	public Boolean validate(String pUsuario, String pHash) {

		return (query("SELECT * FROM Persona WHERE NumeroDocumento = ? AND Hash = ?",Persona.class, pUsuario, pHash).size() == 1);
	}

	@Override
	public Usuario getByName(String pUsuario) {

		List<Usuario> lstUsuario = query("SELECT PersonaId ,Nombres ,Apellidos ,Email ,RUC FROM Persona WHERE numeroDocumento = ?", Usuario.class, pUsuario);
		Usuario usuario = null;

		if (lstUsuario.size() > 0){
			usuario = lstUsuario.get(0);
		}

		return usuario;
	}
}