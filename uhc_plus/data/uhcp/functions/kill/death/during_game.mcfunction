# Commands to run during the game
execute at @s run spawnpoint @s ~ ~ ~ ~

# Augments Effects
function uhcp:kill/death/augments

# Marker
execute as @e[tag=UHCP_Summon] if score @s uhcp_id = @a[tag=UHCP_CurrentDeadPlayer,limit=1] uhcp_id run kill @s
execute as @e[tag=UHCP_Death] if score @s uhcp_id = @a[tag=UHCP_CurrentDeadPlayer,limit=1] uhcp_id run kill @s
execute at @s summon minecraft:marker run function uhcp:kill/death/spawn_marker

# Soul Apple
execute at @s on attacker run function uhcp:kill/soul_apple/init

# General Effects
playsound minecraft:entity.bogged.death master @s ~ ~ ~ 1 0.5 1
playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1 0.5 1
playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1 0.5 1
