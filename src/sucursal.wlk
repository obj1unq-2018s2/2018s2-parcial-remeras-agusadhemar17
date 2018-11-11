import Modelos.*


class Sucursal{
	//var property hayDescuento = true
	
	var property cantidadMinima
	var property facturacion = 0
	
	
	method hayDescuento(cantidad) = return cantidadMinima >= cantidad 
	
	method facturar(num) =  return facturacion += num  // TODO ¿Cuándo se enviaría este mensaje?
	
}


