require "assets.present"
require "assets.history1"
require "assets.level1"
require "assets.player"
require "assets.draw" 
local mouse -- save the mouse graphics
font={} -- save the font
rooms_icon={}--iconos de los cuartos
--
--
-- love.load
function love.load()
  --global vars are step, player, help, font...
  version = "1.0.1"
  step = 1 --firs step of the game "Present" 
  help = false -- boolean to show help content
  loadPresent() -- load Present Data
  loadHistory1() -- load history
  loadLevel1() -- load Lvl 1 Data
  createPlayer() --load Player Data
  player = getPlayer() --inicializate the player
  love.mouse.setVisible(false)  -- hiden mouse
  mouse = love.graphics.newImage("resource/icons/mouse.png")  -- load mouse image
  font[26]= love.graphics.newFont("resource/fonts/Metro Normal.ttf", 26) --declaro la fuente y el tamaño 
  font[32]= love.graphics.newFont("resource/fonts/Metro Normal.ttf", 32) --declaro la fuente y el tamaño 
  world_name={}
  world_name[3] = "El valle"
  rooms_icon[0]=  love.graphics.newImage("resource/rooms/desconocido.png")
  rooms_icon[1]=  love.graphics.newImage("resource/rooms/inicio.png")
  rooms_icon[2]=  love.graphics.newImage("resource/rooms/vacio.png")
  rooms_icon[3]=  love.graphics.newImage("resource/rooms/salida.png")
  rooms_icon[4]=  love.graphics.newImage("resource/rooms/tienda.png")
  rooms_icon[5]=  love.graphics.newImage("resource/rooms/acertijo.png")
  rooms_icon[6]=  love.graphics.newImage("resource/rooms/trampa.png")
  rooms_icon[7]=  love.graphics.newImage("resource/rooms/enemigo.png")
  rooms_icon[8]=  love.graphics.newImage("resource/rooms/barrera.png")
  rooms_icon[9]=  love.graphics.newImage("resource/rooms/noche.png")
  rooms_icon[10]= love.graphics.newImage("resource/rooms/jefe.png")
  rooms_icon[11]= love.graphics.newImage("resource/rooms/cofre.png")
  rooms_icon[12]= love.graphics.newImage("resource/rooms/mapa.png")
  rooms_icon[13]= love.graphics.newImage("resource/rooms/cura.png")
  rooms_icon[14]= love.graphics.newImage("resource/rooms/seguro.png")
  rooms_icon[15]= love.graphics.newImage("resource/rooms/llave.png")
end
--
--
--love.update
function love.update(dt)
  if step == 1 then
    updatePresent(dt)
  elseif step == 2 then
    updateHistory1(dt)
  elseif step == 3 then
    updateLevel1(dt)
  end  
end
--
--
--love.draw
function love.draw()
  if step == 1 then
    drawPresent()
  elseif step == 2 then
    drawHistory1()
  elseif step == 3 then
    drawLevel1()
  end    
  printMouse(mouse)  
end
--
--
--love.keyreleased
function love.keyreleased(key)
  if key == 'escape' then
    love.event.quit()
  end
  if step == 1 then
    keyreleasedPresent(key)
  elseif step == 2 then
    keyreleasedHistory1(key)
  elseif step == 3 then
    keyreleasedLevel1(key)
  end  
end
--
--
--love.quit
function love.quit()  
end
--
--
--focus
function love.focus(f)  
end