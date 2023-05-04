
object bombon {
	var peso = 15
	
	method precio() = 5
	method peso() = peso
	method gusto() = "frutilla"
	method libreDeGluten() = true
	method mordisco() {
		peso = (peso * 0.8) - 1
	}
}

object alfajor {
	var peso = 300
	
	method precio() = 12
	method peso() = peso
	method gusto() = "chocolate"
	method libreDeGluten() = false
	method mordisco() {
		peso = (peso * 0.8)
	}
}

object caramelo {
	var peso = 5
	
	method precio() = 1
	method peso() = peso
	method gusto() = "frutilla"
	method libreDeGluten() = true
	method mordisco() {
		peso = 0.max(peso - 1)
	}
}

object chupetin {
	var peso = 7
	
	method precio() = 2
	method peso() = peso
	method gusto() = "naranja"
	method libreDeGluten() = true
	method mordisco() {
		peso = 2.max(peso*0.9)
		// no me convence
	}
}

object oblea {
	var peso = 250
	
	method precio() = 5
	method peso() = peso
	method gusto() = "vainilla"
	method libreDeGluten() = false
	method mordisco() {
		peso = if (peso>70) {peso*0.5}
				else {peso*0.75}
	}
}

object chocolatin {
	var peso
	var pesoMordido
	
	method peso(valor) {
		peso = valor
		pesoMordido = valor
	}
	method peso() = pesoMordido
	method precio() = 0.5*peso
	method gusto() = "chocolate"
	method libreDeGluten() = false
	method mordisco() {
		pesoMordido = 0.max(pesoMordido-2)	}
}

object golosinaBaniada {
	var golosina
	var baniado = 4
	method golosina(unaGolosina){
		golosina = unaGolosina
	}
	method peso() { return golosina.peso() + baniado }
	method precio() { return golosina.precio()+2} //ok
	method gusto() = golosina.gusto() //ok
	method libreDeGluten() = golosina.libreDeGluten() //ok
	method mordisco() {
		golosina.mordisco()
		baniado = 0.max(baniado - 2)
	}
}

object tutti {
	var property peso = 5
	var property libreDeGluten = true
	//const gusto = 
	
	method precio() {
		if (libreDeGluten) { return 7}
			else {return 10}
	}
	method gusto() = "frutilla"
		
	method mordisco() {
		
	}
}




// Completar el resto de las golosinas