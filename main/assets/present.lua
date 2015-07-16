local frame
local timer_count
local timer_count_max 
local images_loaded = {}
--
--
--load
function loadPresent() 
  frame = 1  
  timer_count=0
  timer_count_max=3 
  images_loaded[1] = love.graphics.newImage("resource/background/help.png")
  images_loaded[2] = love.graphics.newImage("resource/background/sponsor1.png")
  images_loaded[3] = love.graphics.newImage("resource/background/sponsor2.png")  
  images_loaded[4] = love.graphics.newImage("resource/background/title.png")
end
--
--
--update
function updatePresent(dt)
  if frame == 1 or frame == 2 then
    timer_count = timer_count+dt
    if timer_count >= timer_count_max then      
      timer_count =0
      frame = frame + 1      
    end
  end  
end
--
--
--draw
function drawPresent()
  printBackground(images_loaded[frame+1])  
  if help == true then
    printHelp(images_loaded[1])
  end 
end
--
--
--keypress
function keyPressPresent(key)
   if key == 'h' and frame==3 then
     if help == false then
       help = true
     else
       help = false
     end      
  end 
  if key == 'return' then
    if frame == 3 then
      step = step + 1 
    elseif frame < 3 then
      timer_count = 0
      frame = 3
    end 
  end
end

