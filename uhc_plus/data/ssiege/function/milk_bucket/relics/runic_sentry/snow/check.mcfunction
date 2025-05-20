# Check for snow
execute if score @s uhcp_itemCount matches 100.. run return run function uhcp:relics/runic_sentry/snow/lower
execute if block ~ ~ ~ minecraft:snow run return fail
execute if block ~ ~ ~ #uhcp:carpets run return run function uhcp:relics/runic_sentry/snow/carpet
execute if block ~ ~ ~ #uhcp:no_hitbox_blocks run tp @s ~ ~ ~
execute if block ~ ~ ~ #minecraft:fence_gates[open=true] run tp @s ~ ~ ~
tag @s remove UHCP_Snow
