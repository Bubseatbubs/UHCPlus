scoreboard players set ftick status 0
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000000 0 1
tellraw @a ["",{"text":"Fire Tick:","color":"gold"},{"text":" ["},{"text":"Off","color":"red"},{"text":"]"}]
execute in minecraft:overworld run gamerule doFireTick false
execute in minecraft:the_nether run gamerule doFireTick false
