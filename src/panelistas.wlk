object horacioPagani {

	var property nivelDeEnojo = 0

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
	method serChicaneadoPorToti(){
          if(self.estaCaliente()){
              nivelDeEnojo += 1000			
	   }
	}
	
}

object totiPasman {

	var property soberbia = 10
	var property tieneSed = false

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
	method chichanearAHoracio(){
        soberbia += 20
        horacioPagani.serChicaneadoPorToti()
     }
	
}

object lizzyTagliani {

	var property humor = 10

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
}
