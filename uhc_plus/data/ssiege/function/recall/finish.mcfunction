execute as @s[team=blue] run function ssiege:bases/teleport_blue
execute as @s[team=red] run function ssiege:bases/teleport_red
scoreboard players set @s ssiege_recall_charge -1
execute at @s run playsound minecraft:block.end_portal.spawn master @a[distance=..32] ~ ~ ~ 1 1
tellraw @s {text:"Recall complete!",color:"light_purple"}

execute if score @s uhcp_augment matches 501 run function ssiege:augments/effects/prismatic/adrenal_surge/reset