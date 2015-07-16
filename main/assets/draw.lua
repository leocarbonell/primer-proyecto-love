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
  love.graphics.print("version "..data, 600, 566) --escribo (VERSION)
end
function printAtributos(data0, data1, data2, data3, data4, data5, data6, data7)
  love.graphics.setColor(0,0,0,255) --aplico el color al texto
  love.graphics.print((data0 + data1).." / "..(10 + data1), 47, 12) --escribo (salud_min / salud_max) 
  love.graphics.print(data2, 163, 12) --escribo (alimento)  
  love.graphics.print(data3, 269, 12) --escribo (dinero) 
  love.graphics.print(data4, 375, 12) --escribo (nivel)
  love.graphics.print(data5.." / 10", 475, 12) --escribo (experiencia)
  love.graphics.print(data6+5, 52, 55) --escribo (arma)
  love.graphics.print(data7+2, 52, 96) --escribo (armadura) 
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
function printItem(data0, data1)
  love.graphics.setColor(0,0,0,255) --aplico el color al texto 
  love.graphics.print(data0, 84, 529) --escribo (corazón)
  love.graphics.print(data1, 190, 529) --escribo (llave)
end
function printMapa(data)  
  love.graphics.setColor(255,255,255,250) --color del rectángulo
  love.graphics.draw(data, 726, 526)--dibujar mapa
end
