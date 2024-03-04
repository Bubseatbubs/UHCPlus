scoreboard players add @s uhcp_a_timer 1

tag @s add UHCP_Teleport
execute as @e[tag=UHCP_SClone] if score @s uhcp_id = @e[tag=UHCP_Teleport,sort=nearest,limit=1] uhcp_id run tp @e[tag=UHCP_Teleport,sort=nearest,limit=1] @s
execute as @e[tag=UHCP_Hitbox] if score @s uhcp_id = @e[tag=UHCP_Teleport,sort=nearest,limit=1] uhcp_id run tp @s @e[tag=UHCP_Teleport,sort=nearest,limit=1]
execute at @s unless entity @e[tag=UHCP_Hitbox,distance=..0.5] run scoreboard players set @s uhcp_a_timer 300

execute if score @s uhcp_a_timer matches ..200 run return run tag @s remove UHCP_Teleport

# Run when time is up
particle minecraft:campfire_signal_smoke ~ ~ ~ 1.5 0.5 1.5 0.1 50 normal
playsound entity.armor_stand.break master @a[distance=..8] ~ ~ ~ 1 0.5 0.5
gamerule showDeathMessages false
execute as @e[tag=UHCP_SClone] if score @s uhcp_id = @e[tag=UHCP_Teleport,sort=nearest,limit=1] uhcp_id run tp @s 0 -64 0
execute as @e[tag=UHCP_SClone] if score @s uhcp_id = @e[tag=UHCP_Teleport,sort=nearest,limit=1] uhcp_id run kill @s
execute as @e[tag=UHCP_Hitbox] if score @s uhcp_id = @e[tag=UHCP_Teleport,sort=nearest,limit=1] uhcp_id run tp @s 0 -64 0
execute as @e[tag=UHCP_Hitbox] if score @s uhcp_id = @e[tag=UHCP_Teleport,sort=nearest,limit=1] uhcp_id run kill @s
kill @e[type=experience_orb,distance=..1.5]
gamerule showDeathMessages true
tag @s remove UHCP_Teleport
tp @s 0 -64 0
kill @s
