package com.usuario.empresa.web.administracion.controladores;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.io.PrintWriter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import com.usuario.empresa.web.administracion.entidades.Solicitud;
import com.usuario.empresa.web.administracion.servicios.SolicitudService;
import com.usuario.empresa.web.administracion.entidades.Oferta;
import com.usuario.empresa.web.administracion.entidades.Posicion;
import com.usuario.empresa.web.administracion.servicios.OfertaService;
import com.usuario.empresa.web.administracion.servicios.PosicionService;
@Controller
public class SolicitudController extends MultiActionController {
	/**
	 * 
	 */

	private List<Solicitud> solicitudes = new ArrayList<Solicitud>();
	private Solicitud solicitud=new Solicitud();
	private SolicitudService service = null;
	private OfertaService serviceOfertas = null;
	private PosicionService servicePosiciones=null;
	private ApplicationContext ctx = null;

	/**
	 * constructor
	 */
	public SolicitudController() {

		ctx = new ClassPathXmlApplicationContext(
				"classpath:/spring/applicationContext.xml");
		service = (SolicitudService) ctx.getBean("solicitudesService");
		serviceOfertas = (OfertaService) ctx.getBean("ofertasService");
		servicePosiciones= (PosicionService) ctx.getBean("posicionesService");
	}

	public ModelAndView listar(HttpServletRequest request,
			HttpServletResponse response) throws Exception {


		return new ModelAndView("solicitudes/listar");
	}
	
	
	
	public ModelAndView ingresar (HttpServletRequest request, HttpServletResponse response) throws Exception{
		solicitud.setId_solicitante(request.getParameter("ids"));
		solicitud.setAutor(request.getParameter("autor"));
		solicitud.setDescripcion(request.getParameter("descripcion"));
		solicitud.setDireccion(request.getParameter("direccion"));
		solicitud.setEmail(request.getParameter("email"));
		solicitud.setTelefono(request.getParameter("telefono"));
		solicitud.setTitulo(request.getParameter("titulo"));
		service.insertSolicitud(solicitud);
		
		Posicion posicion=new Posicion();
		posicion.setPosicion(request.getParameter("posicion"));
		servicePosiciones.insertPosicion(posicion);
		return new  ModelAndView("solicitudes/exito", "solicitud", solicitud);
	
	}

	public ModelAndView solicitudes(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
			solicitudes = service.getSolicitudes();

		return new ModelAndView("administrador/solicitudes", "solicitudes", solicitudes);
	}
	
	public ModelAndView aceptar(HttpServletRequest request,
		HttpServletResponse response) throws Exception {
		Oferta oferta=new Oferta();
		Date fecha=new Date();
		oferta.setAutor(request.getParameter("autor"));
		oferta.setDescripcion(request.getParameter("descripcion"));
		oferta.setDireccion(request.getParameter("direccion"));
		oferta.setEmail(request.getParameter("email"));
		oferta.setTelefono(request.getParameter("telefono"));
		oferta.setTitulo(request.getParameter("titulo"));
		oferta.setFecha(fecha);
		serviceOfertas.insertOferta(oferta);
		service.deleteSolicitud(Integer.parseInt(request.getParameter("id")));
		solicitudes = service.getSolicitudes();
		return new ModelAndView("administrador/solicitudes", "solicitudes", solicitudes);
	}
	
	}