scoreboard players set warden status 1
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000000 1 1
tellraw @a ["",{"text":"Wardens:","color":"gold"},{"text":" ["},{"text":"On","color":"green"},{"text":"]"}]

gamerule doWardenSpawning true

