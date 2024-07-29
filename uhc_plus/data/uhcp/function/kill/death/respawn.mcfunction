# Check for respawn
tag @s add UHCP_RespawnCheck
function uhcp:kill/death/respawn_check
tag @s remove UHCP_RespawnCheck

# Return if not yet respawned
execute as @s[tag=UHCP_Died] run return fail

# Respawn in lobby
execute unless score %game uhcp_initStatus matches 1 run return run function uhcp:kill/death/lobby

# Respawn during game
effect give @s minecraft:night_vision infinite 0 true

# Check if spawnpoint worked
execute unless data entity @s {SpawnForced:1b} run function uhcp:kill/death/location

# Death message
execute if score %end uhcp_initStatus matches 1 run return fail
title @s subtitle {"text":"You are now spectating the match.","color":"gray","bold":true}
title @s title {"text":"YOU DIED","color":"dark_red","bold":true}
