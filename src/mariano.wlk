import golosinas.*

object mariano {
	const property golosinas = []
	
	method comprar(unaGolosina){
		golosinas.add(unaGolosina)
	}
	
	method desechar(unaGolosina){
		golosinas.remove(unaGolosina)
	}
	
	method cantidadDeGolosinas(){
		return golosinas.size()
	}
	
	method tieneLaGolosina(unaGolosina){
		return golosinas.contains(unaGolosina)
	}
	
	method probarGolosinas(){
		golosinas.forEach({g=>g.mordisco()})
	}
	
	method hayGolosinaSinTACC(){
		return golosinas.any({g=>g.libreDeGluten()})
	}
	
	method preciosCuidados(){
		return golosinas.all({g=>g.precio()<=10})
	}
	
	method golosinaDeSabor(unSabor){
		return golosinas.find({g=>g.gusto() == unSabor})
	}
	
	method golosinasDeSabor(unSabor){
		return golosinas.filter({g=>g.gusto() == unSabor})
	}
	
	method sabores(){
		return golosinas.map({g=>g.gusto()}).asSet()
	}
	
	method golosinaMasCara(){
		return golosinas.max({g=>g.precio()})
	}
	
	method pesoGolosinas(){
		return golosinas.sum({g=>g.peso()})
	}
	
	//ESTADISTICAS
	//los parametros los paso a conjuntos por si me pasan lista
	method golosinasFaltantes(golosinasDeseadas){
		return golosinasDeseadas.asSet().difference(golosinas.asSet())
	}
	
	method gustosFaltantes(gustosDeseados){
		return gustosDeseados.asSet().difference(self.sabores())
	}
	

}
