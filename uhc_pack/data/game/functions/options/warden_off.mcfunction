scoreboard players set warden status 0
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000000 0 1
tellraw @a ["",{"text":"Wardens:","color":"gold"},{"text":" ["},{"text":"Off","color":"red"},{"text":"]"}]

execute in minecraft:overworld run gamerule doWardenSpawning false
execute in minecraft:the_end run gamerule doWardenSpawning false
execute in minecraft:the_nether run gamerule doWardenSpawning false
