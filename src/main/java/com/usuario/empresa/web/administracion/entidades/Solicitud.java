package com.usuario.empresa.web.administracion.entidades;

public class Solicitud {
	private int id;
	private String id_solicitante;
	private String titulo;
	private String autor;
	private String descripcion;
	private String email;
	private String telefono;
	private String direccion;
	
	
	
	public Solicitud(int id, String id_solicitante, String titulo, String autor, String descripcion, String email,
			String telefono, String direccion) {
		
		this.id = id;
		this.id_solicitante = id_solicitante;
		this.titulo = titulo;
		this.autor = autor;
		this.descripcion = descripcion;
		this.email = email;
		this.telefono = telefono;
		this.direccion = direccion;
	}
	public Solicitud() {
	
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getId_solicitante() {
		return id_solicitante;
	}
	public void setId_solicitante(String id_solicitante) {
		this.id_solicitante = id_solicitante;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public String getAutor() {
		return autor;
	}
	public void setAutor(String autor) {
		this.autor = autor;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTelefono() {
		return telefono;
	}
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	
	
} 