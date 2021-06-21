import cervezas.* 
import personas.*

class Carpas {
	var property tieneBanda = true
	var property limitePersonas 
	var property personasDentro = []
	var marca 
	
	method personasDentro() { return personasDentro }
	method marca() { return marca }
	method entrarPersona(unaPersona) { 
		if(self.dejaEntrar(unaPersona)) { 
			personasDentro.add(unaPersona)
		} else {
			self.error("No puede ingresar")
		}
	}
	method dejaEntrar(unaPersona) { return personasDentro.size() < limitePersonas && not unaPersona.estaEbria() }
	method puedeEntrar(unaPersona) { return self.dejaEntrar(unaPersona) && unaPersona.quiereEntrarAUnaCarpa()} //?????
	method personasEbrias() { return personasDentro.filter({ p => p.estaEbria() })}
	method ebriosEmpedernidos() { return self.personasEbrias().filter({ p => p.todasLasJarras(1) }) } //?????
}
