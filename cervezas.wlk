import carpas.*

class Jarras {
	var litros
	var marca
	
	method capacidadEnLitros() { return litros }
	method cantidadDeAlcohol() { return litros * marca.graduacion() / 100 }
}

class Marcas { 
	const paisDeOrigen 
	var property gramosDeLupulo = 0
	var property litros

	
	method graduacion()
	method paisDeOrigen() { return paisDeOrigen }
}

class CervezaRubia inherits Marcas { 
	var graduacion 
	
	override method graduacion() { return graduacion }
	
}

class CervezaNegra inherits Marcas {
//	override method graduacion() { return graduacionReglamentaria().graduacion().min(gramosDeLupulo) * 2 } //?????
}

class CervezaRoja inherits CervezaNegra { 
	override method graduacion() { return super() * 1.25 }
}

object graduacionReglamentaria {
	var property graduacion = 0
}