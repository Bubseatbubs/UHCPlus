# Check for respawn
tag @s add UHCP_RespawnCheck
execute if predicate uhcp:dimensions/minecraft/overworld in minecraft:overworld positioned 0 0 0 if entity @a[tag=UHCP_RespawnCheck,distance=..42426385] run tag @s remove UHCP_Died
execute if predicate uhcp:dimensions/minecraft/the_end in minecraft:the_end positioned 0 0 0 if entity @a[tag=UHCP_RespawnCheck,distance=..42426385] run tag @s remove UHCP_Died
execute if predicate uhcp:dimensions/minecraft/the_nether in minecraft:the_nether positioned 0 0 0 if entity @a[tag=UHCP_RespawnCheck,distance=..42426385] run tag @s remove UHCP_Died
tag @s remove UHCP_RespawnCheck

# Return if not yet respawned
execute as @s[tag=UHCP_Died] run return fail

# Respawn in lobby
execute unless score %game uhcp_initStatus matches 1 run return run function uhcp:kill/death/lobby

# Respawn during game
effect give @s minecraft:night_vision infinite 0 true

# Death message
title @s subtitle {"text":"You are now spectating the match.","color":"gray","bold":true}
title @s title {"text":"YOU DIED","color":"dark_red","bold":true}
