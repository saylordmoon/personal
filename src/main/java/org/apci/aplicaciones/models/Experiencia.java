package org.apci.aplicaciones.models;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Experiencia {
	
	private int ExperienciaId;
	private int PersonaId;
	private String Empresa;
	private String Cargo;
	private String FechaInicio;
	private String FechaFin;
	private String Descripcion;
	private int AreaId;
	private String Area;
	private int RubroId;
	private int SectorId;
	private int PaisId;
	private String Documento;
	
	public String getDocumento() {
		return Documento;
	}
	public void setDocumento(String documento) {
		Documento = documento;
	}
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

	public String getCargo() {
		return Cargo;
	}
	public void setCargo(String cargo) {
		Cargo = cargo;
	}
	public String getFechaInicio() {
		return FechaInicio;
	}
	public void setFechaInicio(String fechaInicio) {
		FechaInicio = fechaInicio;
	}
	public String getFechaFin() {
		return FechaFin;
	}
	public void setFechaFin(String fechaFin) {
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
	public String getArea() {
		return Area;
	}
	public void setArea(String area) {
		Area = area;
	}
}
