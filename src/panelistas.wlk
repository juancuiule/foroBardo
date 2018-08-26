object horacioPagani {

	var nivelDeEnojo = 0

	method elevarVoz() {
		self.aumentarNivelDeEnojo(10)
	}

	method tomarAgua() {
		self.disminuirNivelDeEnojo(nivelDeEnojo * 0.1)
	}

	method calmarse(unosMinutos) {
		if (!self.estaCaliente()) {
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

	method nivelDeEnojo() = nivelDeEnojo

	method nivelDeEnojo(unNivel) {
		nivelDeEnojo = unNivel
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

	method soberbia() = soberbia

	method tieneSed() = tieneSed

	method soberbia(nivelDeSoberbia) {
		soberbia = nivelDeSoberbia
	}

	method tieneSed(valorDeVerdad) {
		tieneSed = valorDeVerdad
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
			self.aumentarHumor(minutos)
		}
	}

	method aumentarHumor(cantidad) {
		humor += cantidad
	}

	method estaDeMalhumor() {
		return humor < 0
	}

	method humor() = humor

	method humor(nivelDeHumor) {
		humor = nivelDeHumor
	}

}
