package org.apci.aplicaciones.models;


import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Capacitacion {
	
	private int CapacitacionId;
	private int PersonaId;
	private String Capacitacion;
	private String FechaInicio;
	private String FechaFin;
	private int HorasLectivas;
	private String Institucion;
	private int PaisId;
	private String Documento;
	
	public String getDocumento() {
		return Documento;
	}
	public void setDocumento(String documento) {
		Documento = documento;
	}
	public int getCapacitacionId() {
		return CapacitacionId;
	}
	public void setCapacitacionId(int capacitacionId) {
		CapacitacionId = capacitacionId;
	}
	public int getPersonaId() {
		return PersonaId;
	}
	public void setPersonaId(int personaId) {
		PersonaId = personaId;
	}
	public String getCapacitacion() {
		return Capacitacion;
	}
	public void setCapacitacion(String capacitacion) {
		Capacitacion = capacitacion;
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
	public int getHorasLectivas() {
		return HorasLectivas;
	}
	public void setHorasLectivas(int horasLectivas) {
		HorasLectivas = horasLectivas;
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
