#ESTUDIAR API 30/05/2025
# Crear un endpoint que reciba un nombre y devuelva un saludo personalizado.
library(plumber)

#* @param Nombre 
#* @get /Saludo
function(Nombre){
  saludo<- paste("Hola me llamo", Nombre, ", encantada de conocerte")
  return(saludo)
}

# Crear un endpoint que reciba un número y devuelva su cuadrado.
#* @param Numero
#* @get /Cuadrado
function(Numero){
  Numero<- as.numeric(Numero)
  Cuadrado<- Numero^2
  return(cuadrado)
}


# Crear un endpoint que reciba dos números y devuelva su suma.
#* @param Numero1
#* @param Numero2
#* @get /Suma
function(Numero1, Numero2){
  Numero1<- as.numeric(Numero1)
  Numero2<- as.numeric(Numero2)
  Suma<- sum(Numero1, Numero2)
  return(Suma)
}


# Crear un endpoint que reciba un número y diga si es par o impar.
#* @param Numero1
#* @get /ParImpar
function(Numero1){
  Numero1<- as.numeric(Numero1)
  if(Numero1 %% 2 == 0){
    return("Es par")
  } else {
    return("Es impar")
  }
}


# Crear un endpoint que reciba un texto y devuelva cuántos caracteres tiene.
#* @param Texto
#* @get /NumeroCaracteres
function(Texto){
  Texto<- as.character(Texto)
  NCaracteres<- nchar(Texto)
  return(paste("El texto tiene:",NCaracteres, "caracteres"))
}



# Crear un endpoint que reciba una lista de números y devuelva el mayor.
#* @serializer json
#* @param Numeros
#* @get /NumeroMayor
function(Numeros){
  Numeros<- as.numeric(unlist(strsplit(Numeros, ",")))
  Mayor<- max(Numeros)
  return(paste("El numero mas mayor de la lista es", Mayor))
}



# Crear un endpoint que reciba dos palabras y las concatene en una sola frase.
#* @param Palabra1
#* @param Palabra2
#* @get /Concatenar
function(Palabra1, Palabra2){
  Palabra1<- as.character(Palabra1)
  Palabra2<- as.character(Palabra2)
  Concatenar<- paste(Palabra1, Palabra2)
  return(Concatenar)
}



# Crear un endpoint que devuelva la fecha y hora actual.

#* @get HoraFecha
function(Fecha, Hora){
  Fecha_hora<- Sys.time()
  Resultados<- paste("Hoy es",Fecha_hora)
  return(Resultados)
}

# Crear un endpoint que reciba un número y devuelva si es mayor, menor o igual a 10.
#* @param Numero
#* @get Mayor10
function(Numero){
  Numero<- as.numeric(Numero)
  if(Numero>10){
    return(paste("El", Numero, "es mayor a 10"))
  } else if (Numero==10){
    return("El numero que elegiste es 10")
  } else{
    return(paste("El numero", Numero, "es menor a 10"))
  }
}



