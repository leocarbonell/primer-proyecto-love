
local heroe = {}

function createHeroe()
  heroe.nombre = "Max"
  heroe.salud = 10 --vida del heroe.
  heroe.alimento = 10 -- alimento del heroe
  heroe.dinero = 0 --dinero del heroe
  heroe.nivel = 1 --nivel en el que se encuentra el heroe.  
  heroe.experiencia_maxima = 10 --experiencia máxima para que el heroe suba de nivel.
  heroe.experiencia = 0 --experiencia actual en la que se encuentra el heroe.
  heroe.arma = {"arma", 1} --arma del jugador.
  heroe.armadura = {"armadura", 1} --armadura del jugador 
  heroe.habilidad = {{"fuerza", 0},{"resistencia", 0},{"agilidad", 0},{"carga",0},{"suerte", 0}}
  heroe.item = {{"alimento",10}, {"corazon",0}, {"llave", 0}}
end

function getHeroe()
  return heroe
end
function setNombre(data)
  heroe.nombre = data
end
function setSalud(data)
  heroe.salud = data
end
function incrementSalud(data)
  heroe.salud = heroe.salud + data
end
function setAlimento(data)
  heroe.alimento = data
end
function incrementAlimento(data)
  heroe.alimento = heroe.alimento + data
end
function setDinero(data)
  heroe.dinero = data
end
function incrementDinero(data)
  heroe.dinero = heroe.dinero + data
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
function setHabilidad(data0,data1)
  --recorrer con for...
end
function setItem(data0,data1)
  --recorrer con for...
end


  