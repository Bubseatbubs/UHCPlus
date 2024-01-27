scoreboard players set minecraft status 3
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000000 1 1
tellraw @a ["",{"text":"Minecraft Difficulty:","color":"gold"},{"text":" ["},{"text":"Hard","color":"red"},{"text":"]"}]
execute in minecraft:overworld run difficulty hard
execute in minecraft:the_end run difficulty hard
execute in minecraft:the_nether run difficulty hard
