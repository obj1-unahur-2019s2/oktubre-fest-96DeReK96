class Cerveza {
	var property gramosDeLupuloPorLitro
	var property pais
	
}

class Rubia inherits Cerveza {
	var property graduacion
	
}
object graduacionNegra {
	var property reglamentaria = 0
}

class Negra inherits Cerveza{
	
	method graduacion() {
		return (graduacionNegra.reglamentaria() + (gramosDeLupuloPorLitro * 2))
	}
}

class Roja inherits Negra {
	override method graduacion() {
		return (super() * 1.25)
	} 
}  
