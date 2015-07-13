require "draw-map"
local sponsor_1 = love.graphics.newImage("resource/background/sponsor1.png")
local sponsor_2 = love.graphics.newImage("resource/background/sponsor2.png")
local background = love.graphics.newImage('resource/background/_1.png') -- cargar imagen de fondo
local mouse_img = love.graphics.newImage("resource/icons/mouse.png") -- load in a custom mouse image
local iconset = love.graphics.newImage('resource/sets/icon_set.png')
--
function drawScreen(data, data0)
  local backg
  if data == 1 then
    backg=sponsor_1
  elseif data ==2 then
    backg = sponsor_2
  elseif data > 2 then
    backg = background    
  end
  printBackground(backg)  
  printMouse(mouse_img) 
  
  --love.graphics.setColor(0,0,0,255)
  --love.graphics.print("Hello "..data0, 350, 300) 
  end
  