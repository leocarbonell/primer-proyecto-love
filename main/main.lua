--load requires
require 'functions'
require 'hero'
require 'system'
--declare global local variables
local background
local mouse_img
local tileset
local salud_quad
local alimento_quad
local dinero_quad
local nivel_quad
local xp_cuad
local arma_cuad
local armadura_cuad
local heroe
local system
--función callback de carga inicial
function love.load()
  createSystem()
  system = getSystem() 
  createHeroe()
  heroe = getHeroe()  
  love.mouse.setVisible(false) -- make default mouse invisible
  mouse_img  = love.graphics.newImage("resource/icons/mouse.png") -- load in a custom mouse image
  background = love.graphics.newImage('resource/background/_1.png') -- cargar imagen de fondo
  tileset = love.graphics.newImage('resource/tiles/playerset.png') --cargar playerset
  local tile_w, tile_h = 32,32
  local tileset_w, tileset_h = tileset:getWidth(), tileset:getHeight()
  salud_quad = love.graphics.newQuad(0,  0, tile_w, tile_h, tileset_w, tileset_h)
  alimento_quad = love.graphics.newQuad(32,  0, tile_w, tile_h, tileset_w, tileset_h)
  dinero_quad = love.graphics.newQuad(64,  0, tile_w, tile_h, tileset_w, tileset_h)
  nivel_quad = love.graphics.newQuad(96,  0, tile_w, tile_h, tileset_w, tileset_h)
  xp_quad = love.graphics.newQuad(128,  0, tile_w, tile_h, tileset_w, tileset_h) 
  arma_cuad = love.graphics.newQuad(0,  32, tile_w, tile_h, tileset_w, tileset_h)
  armadura_cuad = love.graphics.newQuad(32,  32, tile_w, tile_h, tileset_w, tileset_h)
end

-- función callback de dibujo
function love.draw()
  printBackground(background)  
  printSalud(heroe.salud, heroe.habilidad[2][2], tileset, salud_quad)
  printAlimento(heroe.alimento, tileset, alimento_quad)
  printDinero(heroe.dinero, tileset, dinero_quad)
  printNivel(heroe.nivel, tileset, nivel_quad)
  printXp(heroe.experiencia, tileset, xp_quad)
  printArma(heroe.arma[2], tileset, arma_cuad)
  printArmadura(heroe.armadura[2], tileset, armadura_cuad)
  printWorldName(system.world_name[system.dungeon], system.dungeon, system.subdungeon)
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

