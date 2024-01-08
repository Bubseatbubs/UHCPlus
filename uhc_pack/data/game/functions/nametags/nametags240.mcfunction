execute if score nameplates status matches 0 run scoreboard players set nametags tick 288000
execute if score nameplates status matches 0 run scoreboard players set ShowNametagsAfter setting 240
execute if score nameplates status matches 0 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000000 1 1
execute if score nameplates status matches 0 run tellraw @a ["",{"text":"Show Nametags After:","color":"light_purple"},{"text":" ["},{"text":"240 Minutes","color":"aqua"},{"text":"]"}]

execute if score nameplates status matches 1 run title @a[gamemode=creative] title {"text":"Nameplates","color":"red"}
execute if score nameplates status matches 1 run title @a[gamemode=creative] subtitle {"text":"Already Shown","color":"red"}