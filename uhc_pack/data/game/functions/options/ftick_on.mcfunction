scoreboard players set ftick status 1
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000000 1 1
tellraw @a ["",{"text":"Fire Tick:","color":"gold"},{"text":" ["},{"text":"On","color":"green"},{"text":"]"}]
execute in minecraft:overworld run gamerule doFireTick true
execute in minecraft:the_end run gamerule doFireTick true
execute in minecraft:the_nether run gamerule doFireTick true
