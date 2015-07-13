--variables del sistema del juego
local system = {}
--function createSystem()
  system.paso = 1
  system.paso_time=0
  system.paso_time_max=5  
  system.world_name={"El bosque" , "La cueva" , "La mazmorra" , "La Fortaleza"}
  system.scene={}
  system.dungeon=1
  system.subdungeon=1
  system.room=1
--end
function getSystem()
  return system
end