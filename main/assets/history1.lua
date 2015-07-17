local frame
local images_loaded = {}
--
--
--load
function loadHistory1()
  frame = 1
  images_loaded[1] = love.graphics.newImage("resource/background/history1_1.png")
end
--
--
--update
function updateHistory1(dt)
end
--
--
--draw
function drawHistory1()
  printBackground(images_loaded[frame]) 
end
--
--
--keypress
function keyreleasedHistory1(key)
  if key == 'return' then    
      step = step + 1 
  end
  if key == ' ' then
    if frame < 1 then
      frame = frame +1
    elseif frame >= 1 then     
      step = step + 1 
    end 
  end
end
