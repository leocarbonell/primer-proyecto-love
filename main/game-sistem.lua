--variables del sistema del juego
local system

function createDungeon()
  system.dungeon=1
  system.room=1
end

function getSystem()
  return system
end
function setDungeon(data)
  system.dungeon = data
end
function setRoom(data)
  system.room = data
end
