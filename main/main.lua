--load requires
require 'hero'
require 'system'
require 'draw-general'
--require 'draw-map'
--declare global local variables
--local background
--local mouse_img
--local iconset
--local mapa
local heroe = getHeroe()  
local system = getSystem() 
--función callback de carga inicial
function love.load()
  love.mouse.setVisible(false) -- make default mouse invisible    
  --background = love.graphics.newImage('resource/background/_1.png') -- cargar imagen de fondo
  --iconset = love.graphics.newImage('resource/sets/icon_set.png') --cargar playerset
  --mapa = love.graphics.newImage('resource/sets/mapa.png')  
end

-- función callback de dibujo
function love.draw()
  drawScreen(system.paso, system.paso_time)   
  --printBackground(background)
  --printIconset(iconset)
  --heroe.salud = heroe.salud
  --printAtributos(heroe.salud, heroe.habilidad[2][2], heroe.alimento, heroe.dinero, heroe.nivel, heroe.experiencia, heroe.arma[2], heroe.armadura[2])
  --printWorldName(system.world_name[system.dungeon], system.dungeon, system.subdungeon)
  --printHabilidades(heroe.habilidad[1][2], heroe.habilidad[2][2], heroe.habilidad[3][2], heroe.habilidad[4][2], heroe.habilidad[5][2])
  --printItem(heroe.item[1][2], heroe.item[2][2])
  --printMapa(mapa)  
  --printHeroe(heroe.nombre)
  --printMouse(mouse_img)
end
function love.mousepressed(x, y, button)
   --if button == 'l' then
      --imgx = x -- move image to where mouse clicked
      --imgy = y
   --end
end
--funcion callback para refrescar la pantalla
function love.update(dt)    
  	if gameIsPaused then return end    
    if system.paso == 1 or system.paso ==2 then
      system.paso_time= system.paso_time + dt
      if system.paso_time_max <= system.paso_time then
        system.paso_time = 0
        system.paso = system.paso + 1
      end      
    end    
  end
--función callback para el foco
function love.focus(f)
  gameIsPaused = not f 
end

--función callback para quitar el juego
function love.quit()
  --love.graphics.print("Gracias por jugar! Vuelve pronto!", 400, 500)
end

