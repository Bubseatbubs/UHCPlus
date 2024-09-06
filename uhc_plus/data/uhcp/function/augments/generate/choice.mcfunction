# Automatically selected augment
execute if score @s uhcp_initStatus matches 0 run return run item replace entity @s player.cursor from entity @s container.3
execute if score @s uhcp_initStatus matches 1 run return run item replace entity @s player.cursor from entity @s container.4
execute if score @s uhcp_initStatus matches 2 run return run item replace entity @s player.cursor from entity @s container.5
item replace entity @s player.cursor from entity @s container.7
