object espadaDelDestino {}
object libroDeHechizos {}
object collarDivino {}
object armaduraDeAceroValyrio {}

object rolando {
  const property inventario = []
  const property historial = []
  const hogar = castilloDePiedra
  var property capacidadMaxima = 2
  
  method agarrar(artefacto) {
    historial.add(artefacto)
    if (inventario.size() < capacidadMaxima) inventario.add(artefacto)
  }

  method irAlHogar() {
    inventario.forEach({ artefacto => 
      inventario.remove(artefacto)
      hogar.almacenar(artefacto)
    })
  }

  method artefactosEnPosesion() = inventario + hogar.almacen()

  method posee(artefacto) = self.artefactosEnPosesion().contains(artefacto)
}

object castilloDePiedra {
  const property almacen = []

  method almacenar(artefacto) {
    almacen.add(artefacto)
  }
}