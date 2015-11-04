package org.apci.aplicaciones.models;

public class Paquete {
	
	private int PaqueteId;
	private String Descripcion;
	private int PlanId;
	public int getPaqueteId() {
		return PaqueteId;
	}
	public void setPaqueteId(int paqueteId) {
		PaqueteId = paqueteId;
	}
	public String getDescripcion() {
		return Descripcion;
	}
	public void setDescripcion(String descripcion) {
		Descripcion = descripcion;
	}
	public int getPlanId() {
		return PlanId;
	}
	public void setPlanId(int planId) {
		PlanId = planId;
	}

}
