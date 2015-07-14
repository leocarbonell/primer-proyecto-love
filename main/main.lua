--load
require "draw"
local scene
local timer_count
local timer_count_max
local images_loaded = {}
local dungeon_name = {}
local dungon_resolve
local room
--
--
--load
function love.load()
  room = 0
  dungon_resolve = false
  love.mouse.setVisible(false)
  images_loaded[1] = love.graphics.newImage("resource/icons/mouse.png")
  images_loaded[2] = love.graphics.newImage("resource/sets/icon_set.png")
  images_loaded[3] = love.graphics.newImage("resource/background/sponsor1.png")
  images_loaded[4] = love.graphics.newImage("resource/background/sponsor2.png")
  images_loaded[5] = love.graphics.newImage("resource/background/title.png")
  images_loaded[6] = love.graphics.newImage("resource/background/valle1.png")
  images_loaded[7] = love.graphics.newImage("resource/background/valle2.png")
  dungeon_name[0] = "valle"  
  scene = 1
  timer_count=0
  timer_count_max=5  
end
--
--
--update
function love.update(dt)
  if scene == 1 or scene == 2 then
    timer_count = timer_count+dt
    if timer_count >= timer_count_max then      
      timer_count =0
      scene = scene + 1      
    end
  end    
end
--
--
--draw
function love.draw()    
  printBackground(images_loaded[scene+2])
  if(scene > 3) then
    if(dungon_resolve == false) then
      printIconset(images_loaded[2])
    end    
  end  
  printMouse(images_loaded[1])
  
end
--
--
--key presses
function love.keypressed(key, unicode)
   if key == 'b' then
      text = "La tecla B ha sido presionada."
   elseif key == 'a' then
      a_down = true
   end
end
--
--
--mouse pressed
function love.mousepressed(x, y, button)  
end
--
--
--focus
function love.focus(f)
  gameIsPaused = not f 
end
--
--
--quit
function love.quit()
end

