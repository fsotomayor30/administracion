package com.usuario.empresa.web.administracion.servicios;

import java.util.List;

import com.usuario.empresa.web.administracion.entidades.Oferta;
import com.usuario.empresa.web.administracion.entidades.Usuario;

public class OfertaService extends ServiceImpl {
	/**
	 * Retorna la lista de usuarios
	 * 
	 * @return lista de usuarios
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public List<Oferta> getOfertas() throws Exception {
		return (List<Oferta>) sqlMap.queryForList("getOfertas");
	}

	/**
	 * Retorna un usuario dado su correspondiente id
	 * 
	 * @param idUsuario
	 *            - id del usuario
	 * @return usuario
	 * @throws Exception
	 */
	public Oferta getOferta(int idOferta) throws Exception {
		return (Oferta) sqlMap.queryForObject("getOferta", idOferta);
	}

	/**
	 * Retorna la cantidad total de usuarios
	 * 
	 * @return cantidad de usuarios
	 * @throws Exception
	 */
	public int getTotalOfertas() throws Exception {
		return (Integer) sqlMap.queryForObject("getTotalOfertas");
	}

	/**
	 * Inserta un usuario
	 * 
	 * @param usuario
	 *            - datos del usuario
	 * @return id del nuevo usuario
	 * @throws Exception
	 */
	public void insertOferta(Oferta oferta) throws Exception {
		sqlMap.insert("insertOferta", oferta);
	}

		
	public int getTotalOfertasPorMes(int mes) throws Exception {
		return (Integer) sqlMap.queryForObject("getTotalOfertasPorMes",mes);
	}
	
	public List<Oferta> getOfertasAutor(String autorOferta) throws Exception {
		return (List<Oferta>) sqlMap.queryForList("getOfertasAutor",autorOferta);
	}
	
	public List<Oferta> getOfertasDireccion(String direccionOferta) throws Exception {
		return (List<Oferta>) sqlMap.queryForList("getOfertasDireccion",direccionOferta);
	}
	public List<Oferta> getOfertasTitulo(String tituloOferta) throws Exception {
		return (List<Oferta>) sqlMap.queryForList("getOfertasTitulo",tituloOferta);
	}
	
	public List<Oferta> getOfertasFechaDesde(String fecha) throws Exception {
		return (List<Oferta>) sqlMap.queryForList("getOfertasFechaDesde",fecha);
	
	}
	public List<Oferta> getOfertasFechaHasta(String fecha) throws Exception {
		return (List<Oferta>) sqlMap.queryForList("getOfertasFechaHasta",fecha);
	
	}
	
	
	
	
	
}
