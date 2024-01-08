scoreboard players set ftick status 1
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000000 1 1
tellraw @a ["",{"text":"Fire Tick:","color":"gold"},{"text":" ["},{"text":"On","color":"green"},{"text":"]"}]

gamerule doFireTick true

