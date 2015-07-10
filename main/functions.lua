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
  love.graphics.setColor(255,255,255,200) --color del rectángulo
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
  love.graphics.draw(data2, data3, 10, 10) --dibujo quad
  local font = love.graphics.newFont("resource/fonts/Metro Normal.ttf", 26) --declaro la fuente y el tamaño  
  love.graphics.setFont(font) --cargo la fuente
  love.graphics.setColor(0,0,0,255) --aplico el color al texto  
  love.graphics.print((data0 + data1).." / "..(10 + data1), 47, 12) --escribo (salud_min / salud_max)  
end

function printAlimento(data0, data1, data2)--print alimento(alimento, tile, salud_quad)
  love.graphics.setColor(29,29,29,50) --color del rectángulo
  love.graphics.rectangle("fill", 116, 10, 96, 32 ) --dibujo el rectángulo
  love.graphics.setColor(255,255,255,255) --reinicio color a blanco
  love.graphics.draw(data1, data2, 116, 10) --dibujo quad
  local font = love.graphics.newFont("resource/fonts/Metro Normal.ttf", 26) --declaro la fuente y el tamaño  
  love.graphics.setFont(font) --cargo la fuente
  love.graphics.setColor(0,0,0,255) --aplico el color al texto  
  love.graphics.print(data0, 163, 12) --escribo (alimento)  
end

function printDinero(data0, data1, data2)--print dinero(dinero, tile, salud_quad)
  love.graphics.setColor(29,29,29,50) --color del rectángulo
  love.graphics.rectangle("fill", 222, 10, 96, 32 ) --dibujo el rectángulo
  love.graphics.setColor(255,255,255,255) --reinicio color a blanco
  love.graphics.draw(data1, data2, 222, 10) --dibujo quad
  local font = love.graphics.newFont("resource/fonts/Metro Normal.ttf", 26) --declaro la fuente y el tamaño  
  love.graphics.setFont(font) --cargo la fuente
  love.graphics.setColor(0,0,0,255) --aplico el color al texto  
  love.graphics.print(data0, 269, 12) --escribo (dinero)  
end

function printNivel(data0, data1, data2) --print nivel
  love.graphics.setColor(29,29,29,50) --color del rectángulo
  love.graphics.rectangle("fill", 328, 10, 96, 32 ) --dibujo el rectángulo
  love.graphics.setColor(255,255,255,255) --reinicio color a blanco
  love.graphics.draw(data1, data2, 328, 10) --dibujo quad
  local font = love.graphics.newFont("resource/fonts/Metro Normal.ttf", 26) --declaro la fuente y el tamaño  
  love.graphics.setFont(font) --cargo la fuente
  love.graphics.setColor(0,0,0,255) --aplico el color al texto  
  love.graphics.print(data0, 375, 12) --escribo (nivel) 
end

function printXp(data0, data1, data2)  --print experiencia
  love.graphics.setColor(29,29,29,50) --color del rectángulo
  love.graphics.rectangle("fill", 434, 10, 96, 32 ) --dibujo el rectángulo
  love.graphics.setColor(255,255,255,255) --reinicio color a blanco
  love.graphics.draw(data1, data2, 434, 10) --dibujo quad
  local font = love.graphics.newFont("resource/fonts/Metro Normal.ttf", 26) --declaro la fuente y el tamaño  
  love.graphics.setFont(font) --cargo la fuente
  love.graphics.setColor(0,0,0,255) --aplico el color al texto  
  love.graphics.print(data0.." / 10", 475, 12) --escribo (nivel) 
end

function printArma(data0, data1, data2)  --print arma
  love.graphics.setColor(29,29,29,50) --color del rectángulo
  love.graphics.rectangle("fill", 10, 52, 64, 32 ) --dibujo el rectángulo
  love.graphics.setColor(255,255,255,255) --reinicio color a blanco
  love.graphics.draw(data1, data2, 10, 52) --dibujo quad
  local font = love.graphics.newFont("resource/fonts/Metro Normal.ttf", 26) --declaro la fuente y el tamaño  
  love.graphics.setFont(font) --cargo la fuente
  love.graphics.setColor(0,0,0,255) --aplico el color al texto  
  love.graphics.print(data0+5, 52, 55) --escribo (nivel) 
end

function printArmadura(data0, data1, data2)  --print arma
  love.graphics.setColor(29,29,29,50) --color del rectángulo
  love.graphics.rectangle("fill", 10, 94, 64, 32 ) --dibujo el rectángulo
  love.graphics.setColor(255,255,255,255) --reinicio color a blanco
  love.graphics.draw(data1, data2, 10, 94) --dibujo quad
  local font = love.graphics.newFont("resource/fonts/Metro Normal.ttf", 26) --declaro la fuente y el tamaño  
  love.graphics.setFont(font) --cargo la fuente
  love.graphics.setColor(0,0,0,255) --aplico el color al texto  
  love.graphics.print(data0+2, 52, 96) --escribo (nivel) 
end

function printWorldName(data0, data1, data2) --imprimir información del mapa(nombre, nivel, subnivel)
  love.graphics.setColor(29,29,29,50) --color del rectángulo
  love.graphics.rectangle("fill", 662, 10, 128, 32 ) --dibujo el rectángulo
  local font = love.graphics.newFont("resource/fonts/Metro Normal.ttf", 26) --declaro la fuente y el tamaño  
  love.graphics.setFont(font) --cargo la fuente
  love.graphics.setColor(0,0,0,255) --aplico el color al texto  
  love.graphics.print(data0.." ("..data1.."-"..data2..")", 672, 12) --escribo (nivel)
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

