execute if score nameplates status matches 0 run scoreboard players set nametags tick -1
execute if score nameplates status matches 0 run scoreboard players set ShowNametagsAfter setting 0
execute if score nameplates status matches 0 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000000 0 1
execute if score nameplates status matches 0 run tellraw @a ["",{"text":"Show Nametags After:","color":"light_purple"},{"text":" ["},{"text":"Never","color":"red"},{"text":"]"}]
execute if score nameplates status matches 1 run tellraw @s ["",{"text":"Show Nametags After:","color":"light_purple"},{"text":" ["},{"text":"Turn nameplates off in the options first then re-select this setting","color":"yellow"},{"text":"]"}]
scoreboard players set ShowNametagsAfter setting 888