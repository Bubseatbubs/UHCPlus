#Classic
scoreboard players set Gamemode setting 1
title @a title {"text":"Classic","color":"green"}
title @a subtitle {"text":"Normal game of UHC	","color":"yellow"}
datapack disable "file/flower"
playsound minecraft:entity.guardian.death master @a ~ ~ ~ 1000000 1 1
tellraw @s ["",{"text":"Gamemode:","color":"light_purple"},{"text":" ["},{"text":"Classic","color":"green"},{"text":"]"}]