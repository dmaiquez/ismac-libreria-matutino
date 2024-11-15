package com.distribuida.principal;

import com.distribuida.entities.Cliente;

public class ClientePrincipal {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Cliente cliente = new Cliente(1,"170123456","Juan","Taipe","Tumbaco","0987654321","jtaipe@correo.com");
		Cliente cliente2 = new Cliente(2,"170123457","Maria","Moran","Quito","0987654322","mmoran@correo.com");
		
		System.out.println(cliente.toString());
		System.out.println(cliente2.toString());
		
	}

}
