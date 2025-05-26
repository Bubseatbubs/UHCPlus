# Death/Respawn Logic
gamemode spectator @s

# Situational checks
execute as @s[tag=UHCP_IsAttackTitan] run function uhcp:consumables/titan_spinal_fluid/reset

# In lobby
execute unless score %game uhcp_initStatus matches 1 run return run function uhcp:kill/death/lobby
execute as @s[gamemode=spectator] run return fail