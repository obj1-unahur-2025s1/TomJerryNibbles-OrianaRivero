object tom {
    var energia = 50
    method comer(unRaton){
        energia = energia + 12 + unRaton.peso()
    }
    method correr(distancia){
        energia = energia - distancia /2
    }
    method velocidadMax(){
        return 5 + energia / 10
    }
    method energia(){
        return energia
    }
    method puedeCazar(unaDistancia){
        return energia >= unaDistancia / 2
    }
    method cazarSiPuede(unRaton, unaDistancia){
        if(self.puedeCazar(unaDistancia)){
            self.correr(unaDistancia)
            self.comer(unRaton)
        }
    }
}

object jerry {
    var edad = 2
    method peso(){
        return edad * 20
    }
    method cumplirAnios(){
        edad = edad + 1
    }
   method edad(){
        return edad
    }
}

object nibbles {
    method peso(){
        return 35
    }
}

// Inventar otro ratón