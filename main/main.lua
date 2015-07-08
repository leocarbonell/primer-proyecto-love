--load requires
require 'functions'

--función callback de carga inicial
function love.load()
  
end

-- función callback de dibujo
function love.draw()
   
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

