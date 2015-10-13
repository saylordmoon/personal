package org.apci.aplicaciones.models;

import java.sql.Date;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class FormacionAcademica {
	
	private int FormacionAcademicaId;
	private int PersonaId;
	private int GradoAcademicoId;
	private String Especialidad;
	private Date FechaExpedicion;
	private String Institucion;
	private int PaisId;
	public int getFormacionAcademicaId() {
		return FormacionAcademicaId;
	}
	public void setFormacionAcademicaId(int formacionAcademicaId) {
		FormacionAcademicaId = formacionAcademicaId;
	}
	public int getPersonaId() {
		return PersonaId;
	}
	public void setPersonaId(int personaId) {
		PersonaId = personaId;
	}
	public int getGradoAcademicoId() {
		return GradoAcademicoId;
	}
	public void setGradoAcademicoId(int gradoAcademicoId) {
		GradoAcademicoId = gradoAcademicoId;
	}
	public String getEspecialidad() {
		return Especialidad;
	}
	public void setEspecialidad(String especialidad) {
		Especialidad = especialidad;
	}
	public Date getFechaExpedicion() {
		return FechaExpedicion;
	}
	public void setFechaExpedicion(Date fechaExpedicion) {
		FechaExpedicion = fechaExpedicion;
	}
	public String getInstitucion() {
		return Institucion;
	}
	public void setInstitucion(String institucion) {
		Institucion = institucion;
	}
	public int getPaisId() {
		return PaisId;
	}
	public void setPaisId(int paisId) {
		PaisId = paisId;
	}
}
