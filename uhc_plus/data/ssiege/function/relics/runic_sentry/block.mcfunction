# Block beneath sentry
execute as @s[tag=UHCP_Ground] run return run function uhcp:relics/runic_sentry/ground
execute as @s[tag=UHCP_Snow] run return run function uhcp:relics/runic_sentry/snow/check
execute as @s[tag=UHCP_Carpet] run return run function uhcp:relics/runic_sentry/carpet/check
execute if block ~ ~ ~ #uhcp:no_hitbox_blocks run return run tp @s ~ ~ ~
execute if block ~ ~ ~ #minecraft:fence_gates[open=true] run return run tp @s ~ ~ ~

# Carpet
execute if block ~ ~ ~ #uhcp:carpets run return run function uhcp:relics/runic_sentry/carpet

# Snow
execute if block ~ ~ ~ minecraft:snow run return run function uhcp:relics/runic_sentry/snow

# Ground
execute if block ~ ~ ~ #uhcp:non_solid_blocks run return fail
execute positioned ~ ~0.1 ~ align y run tp @s ~ ~ ~
tag @s add UHCP_Ground
