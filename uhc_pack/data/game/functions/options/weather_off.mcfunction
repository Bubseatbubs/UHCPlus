scoreboard players set weather status 0
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000000 0 1
tellraw @a ["",{"text":"Weather:","color":"gold"},{"text":" ["},{"text":"Off","color":"red"},{"text":"]"}]

execute in minecraft:overworld run gamerule doWeatherCycle false
execute in minecraft:overworld run weather clear
