
local heroe = {}
--function createHeroe()
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
  heroe.item = {{"corazon",0}, {"llave", 0}, {"bomba", 0}}
--end
function getHeroe()
  return heroe
end
  