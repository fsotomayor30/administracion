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

import com.usuario.empresa.web.administracion.entidades.Posicion;
import com.usuario.empresa.web.administracion.entidades.Matriz;
import com.usuario.empresa.web.administracion.servicios.PosicionService;
import com.usuario.empresa.web.administracion.servicios.OfertaService;

@Controller
public class PosicionController extends MultiActionController {
	/**
	 * 
	 */

	private List<Matriz> matriz=new ArrayList<Matriz>();
	
	private List<Posicion> posiciones = new ArrayList<Posicion>();
	private List<Integer> ofertasMes = new ArrayList<Integer>();
	

	private PosicionService service = null;
	private OfertaService serviceOferta=null;
	private ApplicationContext ctx = null;

	/**
	 * constructor
	 */
	public PosicionController() {

		ctx = new ClassPathXmlApplicationContext(
				"classpath:/spring/applicationContext.xml");
		service = (PosicionService) ctx.getBean("posicionesService");
		serviceOferta = (OfertaService) ctx.getBean("ofertasService");
		
	}

	
	public ModelAndView mostrar(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
			Matriz m1=new Matriz();
			posiciones = service.getPosiciones();
			ofertasMes.add(serviceOferta.getTotalOfertasPorMes(1));
			ofertasMes.add(serviceOferta.getTotalOfertasPorMes(2));
			ofertasMes.add(serviceOferta.getTotalOfertasPorMes(3));
			ofertasMes.add(serviceOferta.getTotalOfertasPorMes(4));
			ofertasMes.add(serviceOferta.getTotalOfertasPorMes(5));
			ofertasMes.add(serviceOferta.getTotalOfertasPorMes(6));
			ofertasMes.add(serviceOferta.getTotalOfertasPorMes(7));
			ofertasMes.add(serviceOferta.getTotalOfertasPorMes(8));
			ofertasMes.add(serviceOferta.getTotalOfertasPorMes(9));
			ofertasMes.add(serviceOferta.getTotalOfertasPorMes(10));
			ofertasMes.add(serviceOferta.getTotalOfertasPorMes(11));
			ofertasMes.add(serviceOferta.getTotalOfertasPorMes(12));
			m1.setPosiciones(posiciones);
			m1.setOfertasMes(ofertasMes);
			
			return new ModelAndView("posiciones/mostrar", "matriz", m1);
	}
	
		
	
	
	}