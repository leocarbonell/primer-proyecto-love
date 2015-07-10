--load requires
require 'functions'
require 'hero'
require 'system'
--declare global local variables
local background
local tileset
local salud_quad
local alimento_quad
local dinero_quad
local mouse_img
--función callback de carga inicial
function love.load()
  love.mouse.setVisible(false) -- make default mouse invisible
  mouse_img  = love.graphics.newImage("resource/icons/mouse.png") -- load in a custom mouse image
  background = love.graphics.newImage('resource/background/_1.png')
  tileset = love.graphics.newImage('resource/tiles/playerset.png')
  local tile_w, tile_h = 32,32
  local tileset_w, tileset_h = tileset:getWidth(), tileset:getHeight()
  salud_quad = love.graphics.newQuad(0,  0, tile_w, tile_h, tileset_w, tileset_h)
  alimento_quad = love.graphics.newQuad(32,  0, tile_w, tile_h, tileset_w, tileset_h)
  dinero_quad = love.graphics.newQuad(64,  0, tile_w, tile_h, tileset_w, tileset_h)
  createHeroe()
  createSystem()
end

-- función callback de dibujo
function love.draw()
  printBackground(background)
  local heroe = getHeroe()
  local system = getSystem()   
  printSalud(heroe.salud, heroe.habilidad[2][2], tileset, salud_quad)
  printAlimento(heroe.alimento, tileset, alimento_quad)
  printDinero(heroe.dinero, tileset, dinero_quad)
  --printNivel(heroe.nivel)
  --printExperiencia(heroe.experiencia)
  --printArma(heroe.arma[0])
  --printArmadura(heroe.armadura[0])
  --printDungeon(system.dungeon)
  --printRoom(system.room)
  printHeroe(heroe.nombre)
  printMouse(mouse_img)
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

