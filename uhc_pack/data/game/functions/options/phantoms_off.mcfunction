scoreboard players set phantoms status 0
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000000 0 1
tellraw @a ["",{"text":"Phantoms:","color":"gold"},{"text":" ["},{"text":"Off","color":"red"},{"text":"]"}]
gamerule doInsomnia false
