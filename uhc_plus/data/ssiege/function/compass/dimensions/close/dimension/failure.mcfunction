# Upon spreadplayers failure
execute if block ~ 62 ~ minecraft:water run return run tp @s ~ 64 ~
execute if block ~ 62 ~ minecraft:lava run return run function uhcp:dimensions/close/dimension/failure/lava
execute if block ~ 62 ~ #minecraft:air run return run function uhcp:dimensions/close/dimension/failure/air
tp @s ~ 64 ~
