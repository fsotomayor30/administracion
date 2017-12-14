package com.usuario.empresa.web.administracion.servicios;

import java.util.List;


import com.usuario.empresa.web.administracion.entidades.Posicion;

public class PosicionService extends ServiceImpl {
	/**
	 * Retorna la lista de usuarios
	 * 
	 * @return lista de usuarios
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public List<Posicion> getPosiciones() throws Exception {
		return (List<Posicion>) sqlMap.queryForList("getPosiciones");
	}

	/**
	 * Retorna un usuario dado su correspondiente id
	 * 
	 * @param idUsuario
	 *            - id del usuario
	 * @return usuario
	 * @throws Exception
	 */
	public Posicion getPosicion(int idPosicion) throws Exception {
		return (Posicion) sqlMap.queryForObject("getPosicion", idPosicion);
	}

	/**
	 * Retorna la cantidad total de usuarios
	 * 
	 * @return cantidad de usuarios
	 * @throws Exception
	 */
	public int getTotalPosiciones() throws Exception {
		return (Integer) sqlMap.queryForObject("getTotalPosiciones");
	}

	/**
	 * Inserta un usuario
	 * 
	 * @param usuario
	 *            - datos del usuario
	 * @return id del nuevo usuario
	 * @throws Exception
	 */
	public void insertPosicion(Posicion posicion) throws Exception {
		sqlMap.insert("insertPosicion", posicion);
	}

	
	
	
	
	
	
	
}
