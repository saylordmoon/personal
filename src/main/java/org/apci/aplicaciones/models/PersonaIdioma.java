package org.apci.aplicaciones.models;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class PersonaIdioma {
	
	private int PersonaIdiomaId;
	private int PersonaId;
	private int IdiomaId;
	private int NivelEscrituraId;
	private int NivelHabladoId;
	private int NivelLecturaId;
	public int getPersonaIdiomaId() {
		return PersonaIdiomaId;
	}
	public void setPersonaIdiomaId(int personaIdiomaId) {
		PersonaIdiomaId = personaIdiomaId;
	}
	public int getPersonaId() {
		return PersonaId;
	}
	public void setPersonaId(int personaId) {
		PersonaId = personaId;
	}
	public int getIdiomaId() {
		return IdiomaId;
	}
	public void setIdiomaId(int idiomaId) {
		IdiomaId = idiomaId;
	}
	public int getNivelEscrituraId() {
		return NivelEscrituraId;
	}
	public void setNivelEscrituraId(int nivelEscrituraId) {
		NivelEscrituraId = nivelEscrituraId;
	}
	public int getNivelHabladoId() {
		return NivelHabladoId;
	}
	public void setNivelHabladoId(int nivelHabladoId) {
		NivelHabladoId = nivelHabladoId;
	}
	public int getNivelLecturaId() {
		return NivelLecturaId;
	}
	public void setNivelLecturaId(int nivelLecturaId) {
		NivelLecturaId = nivelLecturaId;
	}

}
