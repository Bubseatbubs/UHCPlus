scoreboard players set minecraft status 2
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000000 1 1
tellraw @a ["",{"text":"Minecraft Difficulty:","color":"gold"},{"text":" ["},{"text":"Normal","color":"yellow"},{"text":"]"}]
execute in minecraft:overworld run difficulty normal
execute in minecraft:the_end run difficulty normal
execute in minecraft:the_nether run difficulty normal
