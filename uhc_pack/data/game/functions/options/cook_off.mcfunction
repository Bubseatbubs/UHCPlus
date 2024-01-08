scoreboard players set autocook status 0
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000000 0 1
datapack disable "file/cook"

tellraw @a ["",{"text":"AutoCook:","color":"gold"},{"text":" ["},{"text":"Off","color":"red"},{"text":"]"}]