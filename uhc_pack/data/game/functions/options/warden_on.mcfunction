scoreboard players set warden status 1
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000000 1 1
tellraw @a ["",{"text":"Wardens:","color":"gold"},{"text":" ["},{"text":"On","color":"green"},{"text":"]"}]

execute in minecraft:overworld run gamerule doWardenSpawning true
execute in minecraft:the_end run gamerule doWardenSpawning true
execute in minecraft:the_nether run gamerule doWardenSpawning true
