local images_loaded = {}
local rooms = {}
local sublevel
--
--
--load
function loadLevel1()
  images_loaded[0]  = love.graphics.newImage('resource/sets/mapa.png')  
  images_loaded[1] = love.graphics.newImage('resource/sets/icon_set.png')
  images_loaded[2] = love.graphics.newImage("resource/background/valle1.png")
  
  rooms[1] = { 1, 1, false, false, false, 2, 0, 0, 0}
  rooms[2] = { 2, 2, false, false, false, 0, 3, 1, 0}
  rooms[3] = { 3, 6, false, false, false, 4, 0, 0, 2}
  rooms[4] = { 4, 11,false, false, false, 0, 5, 3, 0}
  rooms[5] = { 5, 3, false, false, false, 0, 0, 0, 4}
  sublevel = 1
end
--
--
--update
function updateLevel1(dt)
end
--
--
--draw
function drawLevel1()
  printBackground(images_loaded[sublevel+1]) 
  printIconset(images_loaded[1])
  printAtributos(player.salud, player.habilidad[2][2], player.alimento, player.dinero, player.nivel, player.experiencia, player.arma[2], player.armadura[2])
  printWorldName(world_name[step], 1, sublevel)
  printHabilidades(player.habilidad[1][2], player.habilidad[2][2], player.habilidad[3][2], player.habilidad[4][2], player.habilidad[5][2])
  printItem(player.item[1][2], player.item[2][2])
  printMapa(images_loaded[0])  
end
--
--
--keypress
function keyPressLevel1(key)
end
