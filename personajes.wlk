import nave.*
object neo {
   
  var energia = 100
  
  method cambiarEnergia(nuevaEnergia) {
    energia = nuevaEnergia
  }
  method esElegido() = true
  method vitalidad() = energia / 10
  method saltar() = energia / 2
  method subirseALaNave() {
     nave.subirA_(self)
  }
  method bajarseDeLaNave() {
     nave.bajarA_(self)
  }
}

object morfeo {
  
  var vitalidad = 8
  var estaCansado = false
  
  method esElegido() = false
  method vitalidad() = vitalidad
  method saltar() {
     vitalidad = (vitalidad - 1).max(0)
     estaCansado = !estaCansado
  }
  method subirseALaNave(){
     nave.subirA_(self)
  }
  method bajarseDeLaNave() {
     nave.bajarA_(self)
  }
}

object trinity {
 
   method esElegido() = false
   method vitalidad() = 0
   method saltar() {
     // no hace nada
   }
   method subirseALaNave(){
     nave.subirA_(self)
    }
    method bajarseDeLaNave() {
     nave.bajarA_(self)
    }
}
