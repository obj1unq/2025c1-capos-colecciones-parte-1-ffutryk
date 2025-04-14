object espadaDelDestino {}
object libroDeHechizos {}
object collarDivino {}
object armaduraDeAceroValyrio {}

object rolando {
  const property inventario = []
  var property capacidadMaxima = 2
  
  method agarrar(artefacto) {
    if (inventario.size() < capacidadMaxima) inventario.add(artefacto)
  }
}
