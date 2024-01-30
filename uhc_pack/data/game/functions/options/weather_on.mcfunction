scoreboard players set weather status 1
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000000 1 1
tellraw @a ["",{"text":"Weather:","color":"gold"},{"text":" ["},{"text":"On","color":"green"},{"text":"]"}]

execute in minecraft:overworld run gamerule doWeatherCycle true
