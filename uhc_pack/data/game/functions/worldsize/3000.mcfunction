scoreboard players set TotalWorldSize setting 3000
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000000 1 1
datapack enable "file/pregen"
tellraw @a ["",{"text":"Worldsize:","color":"light_purple"},{"text":" ["},{"text":"3000","color":"aqua"},{"text":"]"}]
scoreboard players set Radius WorldPregen 1800

function pregen:config
