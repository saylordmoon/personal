package org.apci.aplicaciones.models;

import java.sql.Date;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Persona {
	
	private int PersonaId;
	private String Nombres;
	private String Apellidos;
	private String Sexo;
	private Date FechaNacimiento;
	private String Email;
	private String Telefono;
	private String Celular;
	private int TipoDocumentoId;
	private String NumeroDocumento;
	private int PaisNacimientoId;
	private String Direccion;
	private int DistritoId;
	private String RUC;
	private boolean Computacion;
	private int NivelComputacionId;
	private boolean TrabajoEnAPCI;
	private boolean FamiliaresEnAPCI;
	private boolean FueDirectivoONGD_ENIEX;
	private boolean DirectivoONGD_ENIEX;
	private String Banco;
	private String Cuenta;
	private String CCI;
	private String Foto;
	private String Documento;
	
	public String getFoto() {
		return Foto;
	}
	public void setFoto(String foto) {
		Foto = foto;
	}
	public String getDocumento() {
		return Documento;
	}
	public void setDocumento(String documento) {
		Documento = documento;
	}
	public String getBanco() {
		return Banco;
	}
	public void setBanco(String banco) {
		Banco = banco;
	}
	public String getCuenta() {
		return Cuenta;
	}
	public void setCuenta(String cuenta) {
		Cuenta = cuenta;
	}
	public String getCCI() {
		return CCI;
	}
	public void setCCI(String cCI) {
		CCI = cCI;
	}
	public boolean isFueDirectivoONGD_ENIEX() {
		return FueDirectivoONGD_ENIEX;
	}
	public void setFueDirectivoONGD_ENIEX(boolean fueDirectivoONGD_ENIEX) {
		FueDirectivoONGD_ENIEX = fueDirectivoONGD_ENIEX;
	}
	public boolean isDirectivoONGD_ENIEX() {
		return DirectivoONGD_ENIEX;
	}
	public void setDirectivoONGD_ENIEX(boolean directivoONGD_ENIEX) {
		DirectivoONGD_ENIEX = directivoONGD_ENIEX;
	}
	public int getPersonaId() {
		return PersonaId;
	}
	public void setPersonaId(int personaId) {
		PersonaId = personaId;
	}
	public String getNombres() {
		return Nombres;
	}
	public void setNombres(String nombres) {
		Nombres = nombres;
	}
	public String getApellidos() {
		return Apellidos;
	}
	public void setApellidos(String apellidos) {
		Apellidos = apellidos;
	}
	public String getSexo() {
		return Sexo;
	}
	public void setSexo(String sexo) {
		Sexo = sexo;
	}
	public Date getFechaNacimiento() {
		return FechaNacimiento;
	}
	public void setFechaNacimiento(Date fechaNacimiento) {
		FechaNacimiento = fechaNacimiento;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getTelefono() {
		return Telefono;
	}
	public void setTelefono(String telefono) {
		Telefono = telefono;
	}
	public String getCelular() {
		return Celular;
	}
	public void setCelular(String celular) {
		Celular = celular;
	}
	public int getTipoDocumentoId() {
		return TipoDocumentoId;
	}
	public void setTipoDocumentoId(int tipoDocumentoId) {
		TipoDocumentoId = tipoDocumentoId;
	}
	public String getNumeroDocumento() {
		return NumeroDocumento;
	}
	public void setNumeroDocumento(String numeroDocumento) {
		NumeroDocumento = numeroDocumento;
	}
	public int getPaisNacimientoId() {
		return PaisNacimientoId;
	}
	public void setPaisNacimientoId(int paisNacimientoId) {
		PaisNacimientoId = paisNacimientoId;
	}
	public String getDireccion() {
		return Direccion;
	}
	public void setDireccion(String direccion) {
		Direccion = direccion;
	}
	public int getDistritoId() {
		return DistritoId;
	}
	public void setDistritoId(int distritoId) {
		DistritoId = distritoId;
	}
	public String getRUC() {
		return RUC;
	}
	public void setRUC(String rUC) {
		RUC = rUC;
	}
	public boolean isComputacion() {
		return Computacion;
	}
	public void setComputacion(boolean computacion) {
		Computacion = computacion;
	}
	public int getNivelComputacionId() {
		return NivelComputacionId;
	}
	public void setNivelComputacionId(int nivelComputacionId) {
		NivelComputacionId = nivelComputacionId;
	}
	public boolean isTrabajoEnAPCI() {
		return TrabajoEnAPCI;
	}
	public void setTrabajoEnAPCI(boolean trabajoEnAPCI) {
		TrabajoEnAPCI = trabajoEnAPCI;
	}
	public boolean isFamiliaresEnAPCI() {
		return FamiliaresEnAPCI;
	}
	public void setFamiliaresEnAPCI(boolean familiaresEnAPCI) {
		FamiliaresEnAPCI = familiaresEnAPCI;
	}
}
