execute if score @s lobby matches 2 run tp @s @e[tag=UHCP_Destination1,sort=nearest,limit=1]
execute if score @s lobby matches 3 at @s run tp @s @e[tag=UHCP_Destination2,sort=nearest,limit=1]
execute if score @s lobby matches 3 at @s run tp @s ~ ~ ~ 0 ~
execute if score @s lobby matches 4 run tp @s @e[tag=UHCP_Destination3,sort=nearest,limit=1]
execute if score @s lobby matches 5 run tp @s @e[tag=UHCP_Destination4,sort=nearest,limit=1]
execute if score @s lobby matches 5 at @s run tp @s ~ ~ ~ -90 ~

execute if entity @s[tag=UHCP_RelicTestingChamber] run function uhcp:lobby/relic_testing/reset
playsound entity.enderman.teleport master @s ~ ~ ~ 1 1 1
particle portal ~ ~ ~ 1 1 1 0.1 100 normal @s
particle flash ~ ~ ~ 1 1 1 0.1 100 normal @s
scoreboard players reset @s lobby
