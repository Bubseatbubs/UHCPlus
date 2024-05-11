playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1
tag @s remove UHCP_CDSelectUpgrade

execute if score @s upgrade matches 1 run function uhcp:augments/effects/prismatic/cyberneticdownload/select/short
execute if score @s upgrade matches 2 run function uhcp:augments/effects/prismatic/cyberneticdownload/select/medium
execute if score @s upgrade matches 3 run function uhcp:augments/effects/prismatic/cyberneticdownload/select/long
scoreboard players reset @s upgrade