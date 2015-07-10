--load requires
require 'function-draw'
require 'hero'
require 'system'
--declare global local variables
local background
local mouse_img
local playerset
local habilityset
local itemset
local salud_quad
local alimento_quad
local dinero_quad
local nivel_quad
local xp_cuad
local arma_cuad
local armadura_cuad
local ataque_cuad
local resistencia_cuad
local agilidad_cuad
local carga_quad
local suerte_quad
local alimento_quad
local corazon_quad
local llave_quad
local mapa_quad
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
  playerset = love.graphics.newImage('resource/sets/playerset.png') --cargar playerset
  habilityset = love.graphics.newImage('resource/sets/habilityset.png') --cargar playerset
  itemset = love.graphics.newImage('resource/sets/itemset.png')
  local tile_w, tile_h = 32,32  
  local set_w, set_h = playerset:getWidth(), playerset:getHeight()
  --player stats
  salud_quad = love.graphics.newQuad(0, 0, tile_w, tile_h, set_w, set_h)
  alimento_quad = love.graphics.newQuad(32, 0, tile_w, tile_h, set_w, set_h)
  dinero_quad = love.graphics.newQuad(64, 0, tile_w, tile_h, set_w, set_h)
  nivel_quad = love.graphics.newQuad(96, 0, tile_w, tile_h, set_w, set_h)
  xp_quad = love.graphics.newQuad(128, 0, tile_w, tile_h, set_w, set_h) 
  arma_cuad = love.graphics.newQuad(0, 32, tile_w, tile_h, set_w, set_h)
  armadura_cuad = love.graphics.newQuad(32, 32, tile_w, tile_h, set_w, set_h)
  tile_w, tile_h = 64,64  
  set_w, set_h = habilityset:getWidth(), habilityset:getHeight()
  --habilidad
  ataque_cuad = love.graphics.newQuad(0, 0, tile_w, tile_h, set_w, set_h)
  resistencia_cuad = love.graphics.newQuad(64, 0, tile_w, tile_h, set_w, set_h)
  agilidad_cuad = love.graphics.newQuad(128, 0, tile_w, tile_h, set_w, set_h)
  carga_quad = love.graphics.newQuad(0, 64, tile_w, tile_h, set_w, set_h)
  suerte_quad = love.graphics.newQuad(64, 64, tile_w, tile_h, set_w, set_h)
  --item
  tile_w, tile_h = 64,64  
  set_w, set_h = itemset:getWidth(), itemset:getHeight()
  alimento_quad = love.graphics.newQuad(0, 0, tile_w, tile_h, set_w, set_h)
  corazon_quad = love.graphics.newQuad(64, 0, tile_w, tile_h, set_w, set_h)
  llave_quad = love.graphics.newQuad(0, 64, tile_w, tile_h, set_w, set_h)
  mapa_quad = love.graphics.newQuad(64, 64, tile_w, tile_h, set_w, set_h)
end

-- función callback de dibujo
function love.draw()
  printBackground(background)  
  printSalud(heroe.salud, heroe.habilidad[2][2], playerset, salud_quad)
  printAlimento(heroe.alimento, playerset, alimento_quad)
  printDinero(heroe.dinero, playerset, dinero_quad)
  printNivel(heroe.nivel, playerset, nivel_quad)
  printXp(heroe.experiencia, playerset, xp_quad)
  printArma(heroe.arma[2], playerset, arma_cuad)
  printArmadura(heroe.armadura[2], playerset, armadura_cuad)
  printWorldName(system.world_name[system.dungeon], system.dungeon, system.subdungeon)
  printAtaque(heroe.habilidad[1][2], habilityset, ataque_cuad)
  printResitencia(heroe.habilidad[2][2], habilityset, resistencia_cuad)
  printAgilidad(heroe.habilidad[3][2], habilityset, agilidad_cuad)
  printCarga(heroe.habilidad[4][2], habilityset, carga_quad)
  printSuerte(heroe.habilidad[5][2], habilityset, suerte_quad)
  printAlimento(heroe.item[1][2],itemset, alimento_quad)
  printCorazon(heroe.item[2][2],itemset, corazon_quad)
  printLlave(heroe.item[3][2], itemset, llave_quad)
  printMapa(0, itemset, mapa_quad)
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

