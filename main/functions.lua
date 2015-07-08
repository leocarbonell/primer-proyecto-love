--functions--
--quitar la aplicación
function love.keypressed(k)
   if k == 'escape' then
      love.event.quit()
   end
end