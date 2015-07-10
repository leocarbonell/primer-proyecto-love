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
  love.graphics.setColor(255,255,255,250) --color del rectángulo
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

function printAtaque(data0, data1, data2) --imprimir habilidad de ataque
  love.graphics.setColor(29,29,29,50) --color del rectángulo
  love.graphics.rectangle("fill", 694, 52, 96, 32 ) --dibujo el rectángulo
  love.graphics.setColor(255,255,255,255) --reinicio color a blanco
  love.graphics.draw(data1, data2, 694, 52) --dibujo quad
  local font = love.graphics.newFont("resource/fonts/Metro Normal.ttf", 26) --declaro la fuente y el tamaño  
  love.graphics.setFont(font) --cargo la fuente
  love.graphics.setColor(0,0,0,255) --aplico el color al texto  
  love.graphics.print(data0, 768, 55) --escribo (nivel) 
end

function printResitencia(data0, data1, data2) --imprimir habilidad de resistencia
  love.graphics.setColor(29,29,29,50) --color del rectángulo
  love.graphics.rectangle("fill", 694, 126, 96, 32 ) --dibujo el rectángulo
  love.graphics.setColor(255,255,255,255) --reinicio color a blanco
  love.graphics.draw(data1, data2, 694, 126) --dibujo quad
  local font = love.graphics.newFont("resource/fonts/Metro Normal.ttf", 26) --declaro la fuente y el tamaño  
  love.graphics.setFont(font) --cargo la fuente
  love.graphics.setColor(0,0,0,255) --aplico el color al texto  
  love.graphics.print(data0, 768, 129) --escribo (nivel)
end

function printAgilidad(data0, data1, data2) --imprimir habilidad de agilidad
  love.graphics.setColor(29,29,29,50) --color del rectángulo
  love.graphics.rectangle("fill", 694, 200, 96, 32 ) --dibujo el rectángulo
  love.graphics.setColor(255,255,255,255) --reinicio color a blanco
  love.graphics.draw(data1, data2, 694, 200) --dibujo quad
  local font = love.graphics.newFont("resource/fonts/Metro Normal.ttf", 26) --declaro la fuente y el tamaño  
  love.graphics.setFont(font) --cargo la fuente
  love.graphics.setColor(0,0,0,255) --aplico el color al texto  
  love.graphics.print(data0, 768, 203) --escribo (nivel)
end

function printCarga(data0, data1, data2) --imprimir habilidad de carga
  love.graphics.setColor(29,29,29,50) --color del rectángulo
  love.graphics.rectangle("fill", 694, 274, 96, 32 ) --dibujo el rectángulo
  love.graphics.setColor(255,255,255,255) --reinicio color a blanco
  love.graphics.draw(data1, data2, 694, 274) --dibujo quad
  local font = love.graphics.newFont("resource/fonts/Metro Normal.ttf", 26) --declaro la fuente y el tamaño  
  love.graphics.setFont(font) --cargo la fuente
  love.graphics.setColor(0,0,0,255) --aplico el color al texto  
  love.graphics.print(data0, 768, 277) --escribo (nivel)  
end

function printSuerte(data0, data1, data2) --imprimir habilidad de suerte
  love.graphics.setColor(29,29,29,50) --color del rectángulo
  love.graphics.rectangle("fill", 694, 348, 96, 32 ) --dibujo el rectángulo
  love.graphics.setColor(255,255,255,255) --reinicio color a blanco
  love.graphics.draw(data1, data2, 694, 348) --dibujo quad
  local font = love.graphics.newFont("resource/fonts/Metro Normal.ttf", 26) --declaro la fuente y el tamaño  
  love.graphics.setFont(font) --cargo la fuente
  love.graphics.setColor(0,0,0,255) --aplico el color al texto  
  love.graphics.print(data0, 768, 351) --escribo (nivel)
end

function printAlimento(data0, data1, data2) --imprimir item alimento
  love.graphics.setColor(29,29,29,50) --color del rectángulo
  love.graphics.rectangle("fill", 10, 526, 96, 32 ) --dibujo el rectángulo
  love.graphics.setColor(255,255,255,255) --reinicio color a blanco
  love.graphics.draw(data1, data2, 10, 526) --dibujo quad
  local font = love.graphics.newFont("resource/fonts/Metro Normal.ttf", 26) --declaro la fuente y el tamaño  
  love.graphics.setFont(font) --cargo la fuente
  love.graphics.setColor(0,0,0,255) --aplico el color al texto  
  love.graphics.print(data0, 84, 529) --escribo (nivel)
end

function printCorazon(data0, data1, data2)
  love.graphics.setColor(29,29,29,50) --color del rectángulo
  love.graphics.rectangle("fill", 116, 526, 96, 32 ) --dibujo el rectángulo
  love.graphics.setColor(255,255,255,255) --reinicio color a blanco
  love.graphics.draw(data1, data2, 116, 526) --dibujo quad
  local font = love.graphics.newFont("resource/fonts/Metro Normal.ttf", 26) --declaro la fuente y el tamaño  
  love.graphics.setFont(font) --cargo la fuente
  love.graphics.setColor(0,0,0,255) --aplico el color al texto  
  love.graphics.print(data0, 190, 529) --escribo (nivel)
end

function printLlave(data0, data1, data2)
  love.graphics.setColor(29,29,29,50) --color del rectángulo
  love.graphics.rectangle("fill", 222, 526, 96, 32 ) --dibujo el rectángulo
  love.graphics.setColor(255,255,255,255) --reinicio color a blanco
  love.graphics.draw(data1, data2, 222, 526) --dibujo quad
  local font = love.graphics.newFont("resource/fonts/Metro Normal.ttf", 26) --declaro la fuente y el tamaño  
  love.graphics.setFont(font) --cargo la fuente
  love.graphics.setColor(0,0,0,255) --aplico el color al texto  
  love.graphics.print(data0, 295, 529) --escribo (nivel)
end

function printMapa(data0, data1, data2)
  love.graphics.setColor(29,29,29,50) --color del rectángulo
  love.graphics.rectangle("fill", 726, 526, 96, 32 ) --dibujo el rectángulo
  love.graphics.setColor(255,255,255,255) --reinicio color a blanco
  love.graphics.draw(data1, data2, 726, 526) --dibujo quad
end

function printHeroe(data)
  love.graphics.setColor(0,0,0,255)
  love.graphics.print("Hello "..data, 350, 300)   
end

