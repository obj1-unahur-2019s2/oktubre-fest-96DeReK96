class Persona {
	var property peso
	var property leGustaMusicaTradicional
	var property nivelDeAguante
	var jarrasQueCompro = []
	method comprarJarra(jarra) {
		jarrasQueCompro.add(jarra)
	}
	method estaEbria() {
		var cantidadDeAlcoholEnTotal = jarrasQueCompro.sum({jarra => jarra.contenidoDeAlcohol()})
		return ((cantidadDeAlcoholEnTotal * peso) > self.nivelDeAguante())
	}
}
class Belgas inherits Persona {
	method lesGustoLasCervezasQueConsumio(marca) {
		return marca.gramosDeLupuloPorLitro() > 4
	}
}
class Checos inherits Persona {
	method lesGustoLasCervezasQueConsumio(marca) {
		return marca.graduacion() > 8
	}
}
class Alemanes inherits Persona {
	method lesGustoLasCervezasQueConsumio(marca) {
		return true
	}
}