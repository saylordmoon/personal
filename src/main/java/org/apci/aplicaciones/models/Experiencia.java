package org.apci.aplicaciones.models;

import java.sql.Date;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Experiencia {
	
	private int ExperienciaId;
	private int PersonaId;
	private String Empresa;
	private int CargoId;
	private Date FechaInicio;
	private Date FechaFin;
	private String Descripcion;
	private int AreaId;
	private int RubroId;
	private int SectorId;
	private int PaisId;
	public int getExperienciaId() {
		return ExperienciaId;
	}
	public void setExperienciaId(int experienciaId) {
		ExperienciaId = experienciaId;
	}
	public int getPersonaId() {
		return PersonaId;
	}
	public void setPersonaId(int personaId) {
		PersonaId = personaId;
	}
	public String getEmpresa() {
		return Empresa;
	}
	public void setEmpresa(String empresa) {
		Empresa = empresa;
	}
	public int getCargoId() {
		return CargoId;
	}
	public void setCargoId(int cargoId) {
		CargoId = cargoId;
	}
	public Date getFechaInicio() {
		return FechaInicio;
	}
	public void setFechaInicio(Date fechaInicio) {
		FechaInicio = fechaInicio;
	}
	public Date getFechaFin() {
		return FechaFin;
	}
	public void setFechaFin(Date fechaFin) {
		FechaFin = fechaFin;
	}
	public String getDescripcion() {
		return Descripcion;
	}
	public void setDescripcion(String descripcion) {
		Descripcion = descripcion;
	}
	public int getAreaId() {
		return AreaId;
	}
	public void setAreaId(int areaId) {
		AreaId = areaId;
	}
	public int getRubroId() {
		return RubroId;
	}
	public void setRubroId(int rubroId) {
		RubroId = rubroId;
	}
	public int getSectorId() {
		return SectorId;
	}
	public void setSectorId(int sectorId) {
		SectorId = sectorId;
	}
	public int getPaisId() {
		return PaisId;
	}
	public void setPaisId(int paisId) {
		PaisId = paisId;
	}
}
