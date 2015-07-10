--functions--
--quitar la aplicación
function love.keypressed(k)
   if k == 'escape' then
      love.event.quit()
   end
end

function printBackground(data)--imprimir el background
  love.graphics.setColor(255,255,255,255) --color del rectángulo
  love.graphics.rectangle("fill", 0, 0, 800, 600 ) --dibujo el rectángulo
  love.graphics.draw(data, 0, 0)
end

function printMouse(data)--imprimir el mouse
  local x, y = love.mouse.getPosition() -- get the position of the mouse
  love.graphics.setColor(255,255,255,255) --color del rectángulo
  love.graphics.draw(data, x, y)--dibujar el mouse
end

function printSalud(data0, data1, data2, data3)--print salud(salud, resistencia, tile, salud_quad)
  love.graphics.setColor(29,29,29,50) --color del rectángulo
  love.graphics.rectangle("fill", 10, 10, 96, 32 ) --dibujo el rectángulo
  love.graphics.setColor(255,255,255,255) --reinicio color a blanco
  love.graphics.draw(data2, data3, 10, 10) --dibujo salud_quad
  local font = love.graphics.newFont("resource/fonts/Metro Normal.ttf", 26) --declaro la fuente y el tamaño  
  love.graphics.setFont(font) --cargo la fuente
  love.graphics.setColor(0,0,0,255) --aplico el color al texto  
  love.graphics.print((data0 + data1).." / "..(10 + data1), 47, 12) --escribo (salud_min / salud_max)  
end

function printAlimento(data0, data1, data2)--print alimento(alimento, tile, salud_quad)
  love.graphics.setColor(29,29,29,50) --color del rectángulo
  love.graphics.rectangle("fill", 116, 10, 96, 32 ) --dibujo el rectángulo
  love.graphics.setColor(255,255,255,255) --reinicio color a blanco
  love.graphics.draw(data1, data2, 116, 10) --dibujo salud_quad
  local font = love.graphics.newFont("resource/fonts/Metro Normal.ttf", 26) --declaro la fuente y el tamaño  
  love.graphics.setFont(font) --cargo la fuente
  love.graphics.setColor(0,0,0,255) --aplico el color al texto  
  love.graphics.print(data0, 163, 12) --escribo (alimento)  
end

function printDinero(data0, data1, data2)--print dinero(dinero, tile, salud_quad)
  love.graphics.setColor(29,29,29,50) --color del rectángulo
  love.graphics.rectangle("fill", 222, 10, 96, 32 ) --dibujo el rectángulo
  love.graphics.setColor(255,255,255,255) --reinicio color a blanco
  love.graphics.draw(data1, data2, 222, 10) --dibujo salud_quad
  local font = love.graphics.newFont("resource/fonts/Metro Normal.ttf", 26) --declaro la fuente y el tamaño  
  love.graphics.setFont(font) --cargo la fuente
  love.graphics.setColor(0,0,0,255) --aplico el color al texto  
  love.graphics.print(data0, 269, 12) --escribo (dinero)  
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
  love.graphics.setColor(255,46,18,255) --color del rectángulo
  love.graphics.rectangle("fill", 662, 10, 128, 64 ) --dibujo el rectángulo
  local font = love.graphics.newFont("resource/fonts/Metro Normal.ttf", 20) --declaro la fuente y el tamaño  
  love.graphics.setFont(font) --cargo la fuente
  love.graphics.setColor(255,255,255,255) --aplico el color al texto
  love.graphics.print("MAZMORRA. "..data, 672, 32) --escribo la nivel:[nivel]  
end
function printRoom(data)  
  love.graphics.setColor(255,152,29,255) --color del rectángulo
  love.graphics.rectangle("fill", 662, 84, 128, 64 ) --dibujo el rectángulo
  local font = love.graphics.newFont("resource/fonts/Metro Normal.ttf", 20) --declaro la fuente y el tamaño  
  love.graphics.setFont(font) --cargo la fuente
  love.graphics.setColor(255,255,255,255) --aplico el color al texto
  love.graphics.print("CUARTO. "..data, 672, 106) --escribo la nivel:[nivel]  
end
function printHeroe(data)
  love.graphics.setColor(0,0,0,255)
  love.graphics.print("Hello "..data, 350, 300)   
end

