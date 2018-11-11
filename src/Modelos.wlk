class Modelo {

	const property talle
	const property color
	const coloresBasicos = [ "blanco", "negro", "Gris" ]
	
	method descuento() = 10

	method esBasica() = coloresBasicos.contains(color)

	method esColor() = not coloresBasicos.contains(color)

	method esGrande() = talle > 41

	method esChica() = talle >= 32 and talle <= 40

	method costoChica()

	method costoGrande()
	

}

class Lisas inherits Modelo {

	const costoBase = 80

	override method costoChica() {
		return if (self.esColor()) {
			costoBase + costoBase * 0.10
		} else {
			costoBase
		}
	}

	override method costoGrande() {
		return if (self.esColor()) {
			100 + 100 * 0.10
		} else {
			100
		}
	}

}

class Bordadas inherits Lisas {

	var cantColores = 1

	override method costoChica() = super() + self.costoBordado()

	method costoBordado() = if (cantColores >= 3) 10 * cantColores else 20
	override method descuento() = 2
}

class Sublimadas inherits Lisas {

	const property alto
	const property ancho
	var property superficieSubl = alto * ancho
	var derechoAutor = 0

	override method costoChica() = super() + self.costoSublimado()

	method costoSublimado() = 0.50 * superficieSubl + derechoAutor// Este costo es de 50 centavos por centímetro cuadrado de superficie del sublimado. 
	override method descuento() = if (derechoAutor > 0) 20 else 10
}

