# Check for carpets
execute if score @s uhcp_itemCount matches 1000.. run return run function uhcp:relics/runic_sentry/carpet/lower
execute if block ~ ~0.1 ~ #uhcp:carpets run return fail
execute if block ~ ~ ~ minecraft:snow run return run function uhcp:relics/runic_sentry/carpet/snow
execute if block ~ ~ ~ #uhcp:no_hitbox_blocks run tp @s ~ ~ ~
execute if block ~ ~ ~ #minecraft:fence_gates[open=true] run tp @s ~ ~ ~
tag @s remove UHCP_Carpet
