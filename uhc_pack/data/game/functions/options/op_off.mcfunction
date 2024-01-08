scoreboard players set opitems status 0
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000000 0 1
tellraw @a ["",{"text":"OP Items:","color":"gold"},{"text":" ["},{"text":"Off","color":"red"},{"text":"]"}]
datapack enable "file/disable_god_apple"


