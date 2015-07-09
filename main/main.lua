--load requires
require 'functions'
require 'hero'
require 'system'

--función callback de carga inicial
function love.load()
  createHeroe()
  createSystem()
end

-- función callback de dibujo
function love.draw()
  
  local heroe = getHeroe()
  local system = getSystem()
  printBack()  
  printVida(heroe.vida)
  printNivel(heroe.nivel)
  printExperiencia(heroe.experiencia)
  printArma(heroe.arma[0])
  printArmadura(heroe.armadura[0])
  printDungeon(system.dungeon)
  printRoom(system.room)
  printHeroe(heroe.nombre)
end

--funcion callback para refrescar la pantalla
function love.update(dt)   
  	if gameIsPaused then return end  
  end

--función callback para el foco
function love.focus(f)
  gameIsPaused = not f 
end

--función callback para quitar el juego
function love.quit()
  --love.graphics.print("Gracias por jugar! Vuelve pronto!", 400, 500)
end

