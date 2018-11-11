import Modelos.*
import sucursal.*

class Pedido {

	const property modelo
	var property cantidad = 0
	var property sucursal
	var property porcentaje = 0

	method precioBase() = modelo.costo() * cantidad

	method aplicarDescuento() {
		return self.precioBase() - (self.precioBase() * porcentaje / 100)
	}

	method precio() {
		return if (sucursal.hayDescuento(cantidad)) {
			self.aplicarDescuento()
		} else {
			self.precioBase()
		}
	}

	//method remerasxColor() = 
}
//
//object RegistrarPedido{
//	var modelo
//	var sucursal
//	
//		
//	} 