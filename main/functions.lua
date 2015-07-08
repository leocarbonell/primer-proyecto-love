--functions--
--quitar la aplicación
function love.keypressed(k)
   if k == 'escape' then
      love.event.quit()
   end
end

function printVida(data)  
  love.graphics.setColor(255,46,18,255) --color del rectángulo
  love.graphics.rectangle("fill", 10, 10, 64, 64 ) --dibujo el rectángulo
  local font = love.graphics.newFont("resource/fonts/Metro Normal.ttf", 20) --declaro la fuente y el tamaño  
  love.graphics.setFont(font) --cargo la fuente
  love.graphics.setColor(255,255,255,255) --aplico el color al texto
  love.graphics.print("VIDA. "..data, 18, 32) --escribo la vida:[vida]  
end

function printNivel(data)  
  love.graphics.setColor(255,152,29,255) --color del rectángulo
  love.graphics.rectangle("fill", 84, 10, 64, 64 ) --dibujo el rectángulo
  local font = love.graphics.newFont("resource/fonts/Metro Normal.ttf", 20) --declaro la fuente y el tamaño  
  love.graphics.setFont(font) --cargo la fuente
  love.graphics.setColor(255,255,255,255) --aplico el color al texto
  love.graphics.print("NIVEL. "..data, 96, 32) --escribo la nivel:[nivel]  
end

function printExperiencia(data)  
  love.graphics.setColor(37,114,235,255) --color del rectángulo
  love.graphics.rectangle("fill", 158, 10, 64, 64 ) --dibujo el rectángulo
  local font = love.graphics.newFont("resource/fonts/Metro Normal.ttf", 20) --declaro la fuente y el tamaño  
  love.graphics.setFont(font) --cargo la fuente
  love.graphics.setColor(255,255,255,255) --aplico el color al texto
  love.graphics.print("EXP. "..data, 168, 32) --escribo la experiencia:[nivel]  
end

function printArma(data)  
  love.graphics.setColor(0,130,135,255) --color del rectángulo
  love.graphics.rectangle("fill", 232, 10, 64, 64 ) --dibujo el rectángulo
  --local font = love.graphics.newFont("resource/fonts/Metro Normal.ttf", 20) --declaro la fuente y el tamaño  
  --love.graphics.setFont(font) --cargo la fuente
  --love.graphics.setColor(255,255,255,255) --aplico el color al texto
  --love.graphics.print("EXP. "..data, 168, 32) --escribo la nivel:[nivel]  
end

function printArmadura(data)  
  love.graphics.setColor(0,193,63,255) --color del rectángulo
  love.graphics.rectangle("fill", 306, 10, 64, 64 ) --dibujo el rectángulo
  --local font = love.graphics.newFont("resource/fonts/Metro Normal.ttf", 20) --declaro la fuente y el tamaño  
  --love.graphics.setFont(font) --cargo la fuente
  --love.graphics.setColor(255,255,255,255) --aplico el color al texto
  --love.graphics.print("EXP. "..data, 168, 32) --escribo la nivel:[nivel]  
end
function printDungeon(data)  
  love.graphics.setColor(0,193,63,255) --color del rectángulo
  love.graphics.rectangle("fill", 390, 10, 64, 64 ) --dibujo el rectángulo
  local font = love.graphics.newFont("resource/fonts/Metro Normal.ttf", 20) --declaro la fuente y el tamaño  
  love.graphics.setFont(font) --cargo la fuente
  love.graphics.setColor(255,255,255,255) --aplico el color al texto
  love.graphics.print("MAZMORRA.", 402, 12) --escribo la nivel:[nivel] 
  love.graphics.print(data, 402, 24) --escribo la nivel:[nivel] 
end
function printRoom(data)  
  love.graphics.setColor(0,193,63,255) --color del rectángulo
  love.graphics.rectangle("fill", 474, 10, 64, 64 ) --dibujo el rectángulo
  local font = love.graphics.newFont("resource/fonts/Metro Normal.ttf", 20) --declaro la fuente y el tamaño  
  love.graphics.setFont(font) --cargo la fuente
  love.graphics.setColor(255,255,255,255) --aplico el color al texto
  love.graphics.print("CUARTO. "..data, 486, 32) --escribo la nivel:[nivel]  
end

