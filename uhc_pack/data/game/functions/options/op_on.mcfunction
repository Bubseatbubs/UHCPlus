scoreboard players set opitems status 1
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000000 1 1
tellraw @a ["",{"text":"OP Items:","color":"gold"},{"text":" ["},{"text":"On","color":"green"},{"text":"]"}]
datapack disable "file/disable_god_apple"


