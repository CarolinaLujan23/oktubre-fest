import cervezas.* 
import carpas.*

class Personas {
	var property peso 
	var property jarrasCompradas = []
	var property escuchaMusicaTradicional
	var property nivelDeAguante
	
	method cantidadDeAlcoholIngerido() { return jarrasCompradas.sum({ j => j.cantidadDeAlcohol() }) } //????? 
	method estaEbria() { return self.cantidadDeAlcoholIngerido() * peso > nivelDeAguante }
	method comprarJarra(jarra) { jarrasCompradas.add(jarra) }
	method leGustaLaMarca(unaMarca) { return true }
	method coincidePreferenciaMusical(unaCarpa) { return escuchaMusicaTradicional == unaCarpa.tieneBanda() }
	method cantidadDePersonas(unaCarpa) { return true }
	method quiereEntrarAUnaCarpa(unaCarpa) { return self.leGustaLaMarca(unaCarpa) && self.coincidePreferenciaMusical(unaCarpa) && self.cantidadDePersonas(unaCarpa)} //??
	method todasLasJarras(litros) { return jarrasCompradas.all({ j => j.litros() == litros }) }
	method esPatriota() { return jarrasCompradas.all({ j => j.paisDeOrigen() == self.nacionalidad()}) }
	method nacionalidad() { return "" }//?????
}

class Alemanes inherits Personas {
	override method cantidadDePersonas(unaCarpa) { return unaCarpa.personasDentro().size().even() }
	override method nacionalidad() { return "Alemania" }
}

class Belgas inherits Personas {
	override method leGustaLaMarca(unaCarpa) { return unaCarpa.marca().gramosDeLupulo() > 4 }
}

class Checos inherits Personas {
	override method leGustaLaMarca(unaCarpa) { return unaCarpa.marca().graduacion() > 0.8 }
	override method nacionalidad() { return "Checa" }
	
}



