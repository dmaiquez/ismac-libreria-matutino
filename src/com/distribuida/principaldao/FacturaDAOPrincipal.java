package com.distribuida.principaldao;

import java.util.Date;
import java.util.List;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.distribuida.dao.ClienteDAO;
import com.distribuida.dao.FacturaDAO;
import com.distribuida.entities.Cliente;
import com.distribuida.entities.Factura;

public class FacturaDAOPrincipal {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		
		ClienteDAO clienteDAO = context.getBean("clienteDAOImpl", ClienteDAO.class);
		FacturaDAO facturaDAO = context.getBean("facturaDAOImpl", FacturaDAO.class);
		
		// add
		Cliente cliente = clienteDAO.findOne(1);
		Factura factura = new Factura();
		factura.setIdFactura(0);
		factura.setNumFactura("FAC-00070");
		factura.setFecha(new Date());
		factura.setTotalNeto(100.50);
		factura.setIva(15.24);
		factura.setTotal(116.54);
		factura.setCliente(cliente);
		
		//facturaDAO.add(factura);
		
		// up
		Cliente cliente2 = clienteDAO.findOne(2);
		Factura factura2 = new Factura();
		factura2.setIdFactura(86);
		factura2.setNumFactura("FAC-00071");
		factura2.setFecha(new Date());
		factura2.setTotalNeto(100.57);
		factura2.setIva(15.27);
		factura2.setTotal(116.57);
		factura2.setCliente(cliente2);
		
		facturaDAO.up(factura2);
		
		
		
		// findAll
		List<Factura> facturas = facturaDAO.findAll();
		
		for (Factura item : facturas) {
			System.out.println(item.toString());
		}
		
		context.close();
		
	}

}
