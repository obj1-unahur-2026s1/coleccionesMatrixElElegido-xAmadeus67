import personajes.*

object nave {
  
  const property pasajeros = [neo, morfeo, trinity] //por ser const solo crea setter
  
  method subirA_(unPasajero) {
      if (self.estaEnNave(unPasajero)) {
          self.error("El pasajero ya esta en la nave")
      }
      pasajeros.add(unPasajero)
  }

  method estaEnNave(unPasajero) {
      return pasajeros.contains(unPasajero)
  }

  method bajarA_(unPasajero) {
     if (not self.estaEnNave(unPasajero)) {
          self.error("El pasajero no esta en la nave")
      }
     pasajeros.remove(unPasajero)
  }

  method pasajeros() {
     return pasajeros
  }

  method cantidadDePasajeros() {
     return pasajeros.size()
  }

  method pasajeroMayorVitalidad() {
      return pasajeros.max({p => p.vitalidad()})
  }

  method estaElElegido() {
     return pasajeros.any({p => p.esElegido()})
  }
  method saltarTodosLosPasajeros() {
     pasajeros.forEach({p => p.saltar()})
  }
  method chocar() {
     pasajeros.forEach({p => p.saltar()}) // pasajeros.saltarTodosLosPasajeros()
     pasajeros.forEach({p => self.bajarA_(p)})
    // mas fácil pasajeros.clear()
  }

  method acelerar() {
     pasajeros.noElegidos().forEach({p => p.saltar()})
  }

  method noElegidos() {
     pasajeros.filter({p => !p.esElegido()})
  }
  
  method pasajeroMenorVitalidad() {
      return pasajeros.min({p => p.vitalidad()})
  }
 
  method estaEquilibrada() {
      return 
      self.pasajeroMayorVitalidad().vitalidad() <=
      self.pasajeroMenorVitalidad().vitalidad() * 2
  }

  method pasajerosValiosos() {
     return pasajeros.filter({p => p.vitalidad() > 5})
  }

  method hayAlgunoAlHorno() {
     return pasajeros.any({p => p.vitalidad() == 0})
  }

  method todosPuedenEnfrentarAgente() {
     return pasajeros.all({p => p.vitalidad() > 2})
  }

  method vitalidadPromedio() {
     pasajeros.average({p => p.vitalidad()})
  }
  
  method cuantosTienenVitalidadPar() {
     pasajeros.count({p => p.vitalidad().even()})
  }
  
  method simulacroDeCombate() {
     pasajeros.saltarTodosLosPasajeros()
     pasajeros.saltarTodosLosPasajeros()
     pasajeros.saltarTodosLosPasajeros()
  }

  method vitalidadesDePasajeros() {
     pasajeros.map({p => p.vitalidad()})
  }

  method ordenarDeMenorAMayorVitalidad() {
     pasajeros.sortBy({p1,p2 => p1.vitalidad() < p2.vitalidad()})
  }
}