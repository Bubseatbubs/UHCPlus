# General effects
effect clear @s
scoreboard players reset @s lobby
scoreboard players reset @s patron
scoreboard players reset @s team
scoreboard players reset @s testkit
scoreboard players reset @s top
scoreboard players reset @s uhcp_death

# Situational checks
execute as @s[tag=UHCP_IsAttackTitan] run function uhcp:consumables/titan_spinal_fluid/reset

# In lobby
execute unless score %game uhcp_initStatus matches 1 run return run function uhcp:kill/death/lobby
execute as @s[gamemode=spectator] run return fail

# During game
scoreboard players reset @s uhcp_deathTime
tag @s add UHCP_CurrentDeadPlayer
tag @s add UHCP_Died

# Set spawnpoint at death location
execute store result score @s uhcp_initStatus run data get entity @s Pos[1]
function uhcp:kill/death/height

# Augments effects
function uhcp:kill/death/augments

# Marker
execute as @e[tag=UHCP_Summon] if score @s uhcp_id = @a[tag=UHCP_CurrentDeadPlayer,limit=1] uhcp_id run function uhcp:entity/instant_kill
execute as @e[tag=UHCP_Death] if score @s uhcp_id = @a[tag=UHCP_CurrentDeadPlayer,limit=1] uhcp_id run kill @s
execute summon minecraft:marker run function uhcp:kill/death/spawn_marker

# Soul apples
execute at @s on attacker run function uhcp:kill/soul_apple/init

# General effects
gamemode spectator @s
effect give @s minecraft:night_vision infinite 0 true

tag @s remove UHCP_CurrentDeadPlayer

playsound minecraft:entity.bogged.death master @s ~ ~ ~ 1 0.5 1
playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1 0.5 1
playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1 0.5 1
