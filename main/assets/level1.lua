local images_loaded = {}
local rooms = {}
local sublevel
local timer_count
local timer_count_max 
local span_on
local span_txt
local init_level
--
--
--load
function loadLevel1()
  timer_count=0
  timer_count_max=0 
  span_on= false
  span_txt = ""
  init_level = true
  sublevel = 1
  images_loaded[0]  = love.graphics.newImage('resource/sets/mapa.png') 
  images_loaded[1] = love.graphics.newImage("resource/background/help.png")
  images_loaded[2] = love.graphics.newImage('resource/sets/icon_set.png')
  images_loaded[3] = love.graphics.newImage("resource/background/valle1.png") 
  loadRooms()
end
--
--
--update
function updateLevel1(dt)
  if init_level == true then
    init_level = false
    timer_count_max=20
    span_on = true
    span_txt = [[
    El Valle (1-1):
    Para encontrar a la Princesa Meredith debes encontrar la salida del valle.
    Ten cuidado con los pasadizos pueden tener sorpresas escondidas,
    unas de ayudas y otras muy malvadas. Suerte en tu aventura Heroe.
    (Para moverte entre los cuartos usa las teclas WASD) (press Enter to Skip)
    ]]
  end
  if span_on == true then
    timer_count = timer_count+dt
    if timer_count >= timer_count_max then      
      span_on = false
      timer_count = 0
      timer_count_max = 0
      span_txt = ""
      
    end
  end  
  local where = player.cuarto
  if rooms[where][3]==false then
    rooms[where][3]=true
    rooms[where][4]=true
  end  
end
--
--
--draw
function drawLevel1()
  printBackground(images_loaded[sublevel+2]) 
  printIconset(images_loaded[2])
  printAtributos(player.salud_maxima, player.salud, player.habilidad[2][2], player.alimento, player.dinero, player.nivel, player.experiencia, player.arma[2], player.armadura[2])
  printWorldName(world_name[step], 1, sublevel)
  printHabilidades(player.habilidad[1][2], player.habilidad[2][2], player.habilidad[3][2], player.habilidad[4][2], player.habilidad[5][2])
  printItem(player.item[1][2], player.item[2][2], player.item[3][2])
  printMapa(images_loaded[0])  
  sortRooms()
  if span_on == true then
    drawSpan(rooms_icon[1], span_txt)
  end  
  if help == true then
    printHelp(images_loaded[1])
  end  
end
--
--
--keypress
function keyreleasedLevel1(key)
  
  if key == 'w'then   
    changeRoom("up")
  elseif key == 'd' then 
    changeRoom("right")
  elseif key == 's' then  
    changeRoom("down")
  elseif key == 'a' then  
    changeRoom("left")
  end  
  
  if key == 'h' then
     if help == false then
       help = true
     else
       help = false
     end  
  end  
  
  if key == 'return' and span_on == true then    
    span_on = false
    timer_count = 0
    timer_count_max = 0
    span_txt = ""
  end
end
--
--
--sortRooms
function sortRooms() 
  local where = player.cuarto
  local kind =  rooms[where][2]
  local discover = rooms[where][3]
  local visited =  rooms[where][4]
  local resolved = rooms[where][5]
  local up =    rooms[where][6]
  local right = rooms[where][7]
  local down =  rooms[where][8]
  local left =  rooms[where][9]
  --draw up room
  if up ~= 0 then
    local kind_up = rooms[up][2]
    local discover_up = rooms[up][3]
    if discover_up == true then
      drawSubRoomUp(rooms_icon[kind_up])
    else
      drawSubRoomUp(rooms_icon[0])
    end    
  end  
  --draw right room
  if right ~= 0 then
    local kind_right = rooms[right][2]
    local discover_right = rooms[right][3]
    if discover_right == true then
      drawSubRoomRight(rooms_icon[kind_right])
    else
      drawSubRoomRight(rooms_icon[0])
    end    
  end  
  --draw down room
  if down ~= 0 then
    
    local kind_down = rooms[down][2]
    local discover_down = rooms[down][3]
    if discover_down == true then
      drawSubRoomDown(rooms_icon[kind_down])
    else
      drawSubRoomDown(rooms_icon[0])
    end 
  end  
  --draw left room  
  if left ~= 0 then    
    local kind_left = rooms[left][2]
    local discover_left = rooms[left][3]
    if discover_left == true then
      drawSubRoomLeft(rooms_icon[kind_left])
    else
      drawSubRoomDown(rooms_icon[0])
    end 
  end 
  --draw center room
  drawSubRoomCenter(rooms_icon[kind])  
end
--
--
--change room
function changeRoom(move)
  local where = player.cuarto
  if move == "up" and rooms[where][6] ~= 0 then
    player.cuarto = rooms[where][6]
  elseif move == "right" and rooms[where][7] ~= 0 then
    player.cuarto = rooms[where][7]
  elseif move == "down" and rooms[where][8] ~= 0 then
    player.cuarto = rooms[where][8]
  elseif move == "left" and rooms[where][9] ~= 0 then
    player.cuarto = rooms[where][9]
  end
end
--
--
--load room
function loadRooms()
  if sublevel == 1 then
    rooms[1] = { 1, 1, false, false, false, 2, 0, 0, 0}
    rooms[2] = { 2, 2, false, false, false, 0, 3, 1, 0}
    rooms[3] = { 3, 6, false, false, false, 4, 0, 0, 2}
    rooms[4] = { 4, 11,false, false, false, 0, 5, 3, 0}
    rooms[5] = { 5, 3, false, false, false, 0, 0, 0, 4}
  elseif sublevel==2 then
    rooms[1] = { 1, 1,  false, false, false, 2, 0, 0, 0}
    rooms[2] = { 2, 2,  false, false, false, 3, 6, 1, 0}
    rooms[3] = { 3, 11, false, false, false, 0, 0, 4, 2}
    rooms[4] = { 4, 7,  false, false, false, 4, 3, 0, 0}
    rooms[5] = { 5, 15, false, false, false, 0, 0, 4, 0}
    rooms[6] = { 6, 6,  false, false, false, 7, 0, 0, 2}
    rooms[7] = { 7, 4,  false, false, false, 0, 8, 6, 0}
    rooms[8] = { 8, 8,  false, false, false, 9, 0, 0, 7}
    rooms[9] = { 9, 3,  false, false, false, 0, 0, 8, 0}
  end  
end