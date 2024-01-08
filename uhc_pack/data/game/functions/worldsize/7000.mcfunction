scoreboard players set TotalWorldSize setting 7000
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000000 1 1
datapack enable "file/pregen"
tellraw @a ["",{"text":"Worldsize:","color":"light_purple"},{"text":" ["},{"text":"7000","color":"aqua"},{"text":"]"}]
scoreboard players set Radius WorldPregen 3800
function pregen:config
