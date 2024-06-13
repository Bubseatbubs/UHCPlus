# Summon experience orbs
execute store result score @s uhcp_initStatus run random value 2..5

execute if score @s uhcp_initStatus matches 2 run return run function uhcp:mine/experience/copper_ingot/2
execute if score @s uhcp_initStatus matches 3 run return run function uhcp:mine/experience/copper_ingot/3
execute if score @s uhcp_initStatus matches 4 run return run function uhcp:mine/experience/copper_ingot/4
execute if score @s uhcp_initStatus matches 5 run function uhcp:mine/experience/copper_ingot/5
