
local heroe = {}

function createHeroe()
  heroe.nombre = "Max"
  heroe.vida = 3 --vida del heroe.
  heroe.nivel = 1 --nivel en el que se encuentra el heroe.
  heroe.experiencia_maxima = 10 --experiencia máxima para que el heroe suba de nivel.
  heroe.experiencia = 0 --experiencia actual en la que se encuentra el heroe.
  heroe.arma = {"puño", 1} --arma del jugador.
  heroe.armadura = {"camisa ordinaria", 1} --armadura del jugador 
end

function getHeroe()
  return heroe
end
function setNombre(data)
  heroe.nombre = data
end
function setVida(data)
  heroe.vida = data
end
function incrementVida(data)
  heroe.vida = heroe.vida + data
end
function setNivel(data)
  heroe.nivel = data
end
function incrementNivel(data)
  heroe.nivel = nivel + data
end
function setExperiencia(data)
  heroe.experiencia = data
end
function incrementExperiencia(data)
  heroe.experiencia = experiencia + data
end
function setArma(data0, data1)
  heroe.arma[0]= data0
  heroe.arma[1]= data1
end
function setArmadura(data0, data1)
  heroe.armadura[0]= data0
  heroe.armadura[1]= data1
end

  