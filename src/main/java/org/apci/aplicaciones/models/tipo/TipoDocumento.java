package org.apci.aplicaciones.models.tipo;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class TipoDocumento {
	private int TipoDocumentoId;
	private String Descripcion;
	
	public int getTipoDocumentoId() {
		return TipoDocumentoId;
	}
	public void setTipoDocumentoId(int tipoDocumentoId) {
		TipoDocumentoId = tipoDocumentoId;
	}
	public String getDescripcion() {
		return Descripcion;
	}
	public void setDescripcion(String descripcion) {
		Descripcion = descripcion;
	}
}
