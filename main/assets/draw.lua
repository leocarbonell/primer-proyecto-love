function printMouse(data)--imprimir el mouse
  local x, y = love.mouse.getPosition() -- get the position of the mouse
  love.graphics.setColor(255,255,255,255) --color del rectángulo
  love.graphics.draw(data, x, y)--dibujar el mouse
end
function printBackground(data)--imprimir el background
  love.graphics.setColor(255,255,255,255) --color del rectángulo
  love.graphics.rectangle("fill", 0, 0, 800, 600 ) --dibujo el rectángulo
  love.graphics.setColor(255,255,255,250) --color del rectángulo
  love.graphics.draw(data, 0, 0)--dibujar background
end
function printIconset(data)--imprimir el background
  love.graphics.setColor(255,255,255,250) --color del rectángulo
  love.graphics.draw(data, 0, 0)--dibujar iconset
end
function printHelp(data)
  love.graphics.setColor(255,255,255,100) --color del rectángulo
  love.graphics.rectangle("fill", 0, 0, 800, 600 ) --dibujo el rectángulo
  love.graphics.setColor(255,255,255,250) --color del rectángulo
  love.graphics.draw(data, 0, 0)--dibujar help
end
function printVersion(data)
  love.graphics.setFont(font[26]) --cargo la fuente
  love.graphics.setColor(0,0,0, 255)
  love.graphics.print("version "..data, 700, 566) --escribo (VERSION)
end
function printAtributos(data0, data1, data2, data3, data4, data5, data6, data7, data8)
  love.graphics.setColor(0,0,0,255) --aplico el color al texto
  love.graphics.print((data0 + data2).." / "..(data1 + data2), 47, 12) --escribo (salud_min / salud_max) 
  love.graphics.print(data3, 163, 12) --escribo (alimento)  
  love.graphics.print(data4, 269, 12) --escribo (dinero) 
  love.graphics.print(data5, 375, 12) --escribo (nivel)
  love.graphics.print(data6.." / 10", 475, 12) --escribo (experiencia)
  love.graphics.print(data7+5, 52, 55) --escribo (arma)
  love.graphics.print(data8+2, 52, 96) --escribo (armadura) 
end
function printHabilidades(data0, data1, data2, data3, data4)
  love.graphics.setColor(0,0,0,255) --aplico el color al texto
   love.graphics.print(data0, 768, 55) --escribo (ataque) 
   love.graphics.print(data1, 768, 129) --escribo (resistencia)
   love.graphics.print(data2, 768, 203) --escribo (agilidad)
   love.graphics.print(data3, 768, 277) --escribo (carga)
   love.graphics.print(data4, 768, 351) --escribo (suerte)
end
function printWorldName(data0, data1, data2) --imprimir información del mapa(nombre, nivel, subnivel)  
  love.graphics.setColor(0,0,0,255) --aplico el color al texto  
  love.graphics.print(data0.." ("..data1.."-"..data2..")", 672, 12) --escribo (nivel)
end
function printItem(data0, data1, data2)
  love.graphics.setColor(0,0,0,255) --aplico el color al texto 
  love.graphics.print(data0, 84, 529) --escribo (corazón)
  love.graphics.print(data1, 190, 529) --escribo (llave)
  love.graphics.print(data2, 294, 529) -- escribo (bomba)
end
function printMapa(data)  
  love.graphics.setColor(255,255,255,250) --color del rectángulo
  love.graphics.draw(data, 726, 526)--dibujar mapa
end
function drawSubRoomUp(data)
  love.graphics.setColor(30,30,30,50) --color del rectángulo
  love.graphics.rectangle("fill", 315, 65, 170, 170 ) --dibujo el rectángulo
  love.graphics.setColor(255,255,255,150)
  --color del rectángul--love.graphics.draw( image, quad, x, y, r, sx, sy, ox, oy, kx, ky )
  love.graphics.draw(data, 325, 75, 0, 0.6, 0.6)--dibujar mapa
end
function drawSubRoomRight(data)
  love.graphics.setColor(30,30,30,50) --color del rectángulo
  love.graphics.rectangle("fill", 465, 215, 170, 170 ) --dibujo el rectángulo
  love.graphics.setColor(255,255,255,150)
  love.graphics.draw(data, 475, 225, 0, 0.6, 0.6)--dibujar mapa
end
function drawSubRoomDown(data)
  love.graphics.setColor(30,30,30,50) --color del rectángulo
  love.graphics.rectangle("fill", 315, 365, 170, 170 ) --dibujo el rectángulo
  love.graphics.setColor(255,255,255,150)
  love.graphics.draw(data, 325, 375, 0, 0.6, 0.6)--dibujar mapa
end
function drawSubRoomLeft(data)
  love.graphics.setColor(30,30,30,50) --color del rectángulo
  love.graphics.rectangle("fill", 165, 215, 170, 170 ) --dibujo el rectángulo
  love.graphics.setColor(255,255,255,150)
  love.graphics.draw(data, 175, 225, 0, 0.6, 0.6)--dibujar mapa
end
function drawSubRoomCenter(data)
  love.graphics.setColor(30,30,30,50) --color del rectángulo
  love.graphics.rectangle("fill", 265, 165, 270, 270 ) --dibujo el rectángulo
  love.graphics.setColor(255,255,255,255)
  love.graphics.draw(data, 275, 175)--dibujar mapa
end
function drawSpan(data0, data1)
  love.graphics.setColor(51,51,51,200) --color del rectángulo
  love.graphics.rectangle("fill", 0, 225, 800, 150 ) --dibujo el rectángulo
  love.graphics.setColor(255,255,255,255)
  love.graphics.draw(data0, 0, 225, 0, 0.6, 0.6)--dibujar mapa
  love.graphics.setFont(font[26]) --cargo la fuente
  love.graphics.setColor(255,255,255, 255)
  love.graphics.print(data1, 140, 227)
  
end

