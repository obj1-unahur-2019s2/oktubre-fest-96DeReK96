
class Jarra {
	var property capacidadDeLitro
	var property marcaDeCerveza
	method contenidoDeAlcohol() {
		return ((self.capacidadDeLitro() / 100) * (self.marcaDeCerveza().graduacion() / 100))
	}
}
