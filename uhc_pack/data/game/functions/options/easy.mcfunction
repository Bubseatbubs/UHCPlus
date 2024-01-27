scoreboard players set minecraft status 1
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000000 1 1
tellraw @a ["",{"text":"Minecraft Difficulty:","color":"gold"},{"text":" ["},{"text":"Easy","color":"green"},{"text":"]"}]
execute in minecraft:overworld run difficulty easy
execute in minecraft:the_end run difficulty easy
execute in minecraft:the_nether run difficulty easy
