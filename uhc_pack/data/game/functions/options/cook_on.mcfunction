scoreboard players set autocook status 1
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000000 1 1
datapack enable "file/cook"

tellraw @a ["",{"text":"AutoCook:","color":"gold"},{"text":" ["},{"text":"On","color":"green"},{"text":"]"}]