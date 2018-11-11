import Modelos.*
import pedido.*
import sucursal.*

object comercio {

	var pedidos = [] // lista de Pedidos
	var sucursales =[] // lista de Sucursales
	
	method nuevoPedido(pedido, sucursal){
		pedidos.add(pedido) 
		sucursal.facturar(pedido.precio())
}
	method totalFacturado() = pedidos.map({ pedido => pedido.precio() }).sum()

	method pedidosXSucursal(sucursal) = pedidos.filter({ pedido => pedido.sucursal() == sucursal })

	method totalFacturadoXSucursal(sucursal) = self.pedidosXSucursal(sucursal).map({ pedido => pedido.precio() }).sum()

	method pedidosXRemera(color) = pedidos.filter({ pedido => color.modelo() == color }).size()

	method pedidoMasCaro() = pedidos.max({ pedido => pedido.precio() }).sum()

	//method pedidosRangoTalle() = new Range(32, 48).
	method sucursalFacturacionMayor() = sucursales.max({sucursal=> sucursal.facturacion()})
	method sucursalVendioTodosLosTalles()= sucursales.filter({sucursal=> sucursal})

}


//Conocer el total facturado por el comercio.
//Conocer el total facturado, considerando sólo los pedidos de una sucursal dada.
//Conocer cuántos pedidos se han realizado para modelos de remeras de un color dado.
//Obtener el pedido más caro recibido por el comercio.
//Conocer de qué talles, entre el 32 y el 48, no ha habido pedidos. Para generar la lista de los números del 32 al 48, usar 
//new Range(32, 48)
//Conocer cuál es la sucursal que más facturo.
//Conocer las sucursales que han vendido remeras de todos los talles.