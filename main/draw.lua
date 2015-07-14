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