local player = {}

function createPlayer()
  player.nombre = "Max"
  player.salud = 10 --vida del player.
  player.alimento = 10 -- alimento del player
  player.dinero = 0 --dinero del player
  player.nivel = 1 --nivel en el que se encuentra el player.  
  player.experiencia_maxima = 10 --experiencia máxima para que el player suba de nivel.
  player.experiencia = 0 --experiencia actual en la que se encuentra el player.
  player.arma = {"arma", 1} --arma del jugador.
  player.armadura = {"armadura", 1} --armadura del jugador 
  player.habilidad = {{"fuerza", 0},{"resistencia", 0},{"agilidad", 0},{"carga",0},{"suerte", 0}} --Habilidades del Jugador
  player.item = {{"alimento",10}, {"corazon",0}, {"llave", 0}} --Item del usuario
  player.cuarto = 1 --cuarto actual
end

function getPlayer()
  return player
end