
object horacioPagani {
	var nivelDeEnojo

	method elevarVoz() {
		self.aumentarNivelDeEnojo(10)
	}

	method tomarAgua() {
		self.disminuirNivelDeEnojo(nivelDeEnojo * 0.1)
	}

	method calmarse(unosMinutos) {
		if (! self.estaCaliente()) {
			nivelDeEnojo = 0
		}
	}

	method estaCaliente() {
		return nivelDeEnojo > 20
	}

	method disminuirNivelDeEnojo(unaCantidad) {
		nivelDeEnojo = 0.max(nivelDeEnojo - unaCantidad)
	}

	method aumentarNivelDeEnojo(unaCantidad) {
		nivelDeEnojo += unaCantidad
	}

	method nivelDeEnojo(unValor) {
		nivelDeEnojo = unValor
	}
}

object totiPasman {
	var soberbia = 10
	var tieneSed = false

	method elevarVoz() {
		self.aumentarSoberbia(10)
		tieneSed = true
	}

	method tomarAgua() {
		tieneSed = false
	}

	method calmarse(unosMinutos) {
		self.disminuirSoberbia(unosMinutos * 2)
	}

	method disminuirSoberbia(unaCantidad) {
		soberbia -= unaCantidad
	}

	method aumentarSoberbia(unaCantidad) {
		soberbia += unaCantidad
	}
}

object lizzyTagliani {
	var humor = 10

	method elevarVoz() {
	}

	method tomarAgua() {
		humor *= 2
	}

	method calmarse(minutos) {
		if (self.estaDeMalhumor()) {
			self.aumentarHumor(minutos * 2)
		}
	}

	method aumentarHumor(cantidad) {
		humor += cantidad
	}

	method estaDeMalhumor() {
		return humor < 0
	}
}