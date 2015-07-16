require "assets.present"
require "assets.history1"
require "assets.level1"
require "assets.player"
require "assets.draw" 
local mouse -- save the mouse graphics
font={} -- save the font
--
--
-- love.load
function love.load()
  --global vars are step, player, help, font...
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
  world_name={}
  world_name[3] = "El valle"
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
  printVersion("1.0.1")
  printMouse(mouse)  
end
--
--
--love.keypressed
function love.keypressed(key)
  if key == 'escape' then
    love.event.quit()
  end
  if step == 1 then
    keyPressPresent(key)
  elseif step == 2 then
    keyPressHistory1(key)
  elseif step == 3 then
    keyPressLevel1(key)
  end  
end
--love.quit
function love.quit()  
end
--
--
--focus
function love.focus(f)  
end
--
