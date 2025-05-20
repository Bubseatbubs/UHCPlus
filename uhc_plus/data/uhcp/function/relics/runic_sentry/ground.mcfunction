# Check ground
execute if block ~ ~ ~ #uhcp:no_hitbox_blocks run return run function uhcp:relics/runic_sentry/ground/no_hitbox
execute if block ~ ~ ~ minecraft:snow run return run function uhcp:relics/runic_sentry/ground/snow
execute if block ~ ~ ~ #uhcp:carpets run return run function uhcp:relics/runic_sentry/ground/carpet
execute if block ~ ~ ~ #minecraft:fence_gates[open=true] run return run function uhcp:relics/runic_sentry/ground/no_hitbox
execute if block ~ ~ ~ #uhcp:non_solid_blocks run tag @s remove UHCP_Ground
