# In the case of lava
scoreboard players set %containers uhcp_settings 0
fill ~-1 62 ~-1 ~1 62 ~1 minecraft:stone replace minecraft:lava
fill ~-1 67 ~-1 ~1 67 ~1 minecraft:stone replace minecraft:lava
fill ~-2 63 ~-2 ~2 66 ~2 minecraft:air replace minecraft:lava
fill ~ 63 ~ ~ 66 ~ minecraft:air replace #uhcp:containers destroy
fill ~ 63 ~ ~ 66 ~ minecraft:air strict
scoreboard players set %containers uhcp_settings 1
tp @s ~ 63 ~
