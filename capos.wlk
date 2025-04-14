object espadaDelDestino {}
object libroDeHechizos {}
object collarDivino {}
object armaduraDeAceroValyrio {}

object rolando {
  const property inventario = #{}
  const property historial = []
  const hogar = castilloDePiedra
  var capacidadMaxima = 2

  method incrementarCapacidad(cantidad) {
    capacidadMaxima += cantidad
  }

  // Getter para los test
  method capacidadMaxima() = capacidadMaxima
  
  method encontrar(artefacto) {
    historial.add(artefacto)
    
    if (self.tieneCapacidad()) inventario.add(artefacto)
  }

  method irAlHogar() {
    inventario.forEach({ artefacto => 
      inventario.remove(artefacto)
      hogar.almacenar(artefacto)
    })
  }

  method tieneCapacidad() = inventario.size() < capacidadMaxima

  method artefactosEnPosesion() = inventario + hogar.almacen()

  method posee(artefacto) = self.artefactosEnPosesion().contains(artefacto)
}

object castilloDePiedra {
  const property almacen = #{}

  method almacenar(artefacto) {
    almacen.add(artefacto)
  }
}