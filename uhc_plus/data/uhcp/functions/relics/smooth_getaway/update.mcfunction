tag @s add UHCP_Find
scoreboard players add @s uhcp_a_timer 1
execute at @s unless entity @e[tag=UHCP_SClone,distance=..3] run scoreboard players set @s uhcp_a_timer 300

tag @s add UHCP_Teleport
execute as @e[tag=UHCP_SClone] at @s unless entity @e[tag=UHCP_SCloneStand,tag=!UHCP_Find,distance=..1] if score @s uhcp_team = @e[tag=UHCP_Teleport,sort=nearest,limit=1] uhcp_team run tag @s add UHCP_Target
tp @s @e[tag=UHCP_Target,sort=nearest,limit=1]
tag @s remove UHCP_Find

execute as @e[type=!#uhcp:inanimate_mobs] unless score @s uhcp_team = @e[tag=UHCP_Teleport,sort=nearest,limit=1] uhcp_team run tag @s add UHCP_AttackTarget
execute as @e[tag=UHCP_Target] run data modify entity @s AngryAt set from entity @e[tag=UHCP_AttackTarget,sort=nearest,limit=1] UUID

execute if score @s uhcp_a_timer matches ..200 run tag @e remove UHCP_Target
tag @e remove UHCP_AttackTarget
tag @s remove UHCP_Teleport
execute if score @s uhcp_a_timer matches ..200 run return 0



particle minecraft:campfire_signal_smoke ~ ~ ~ 1.5 0.5 1.5 0.1 50 normal
playsound entity.armor_stand.break master @a[distance=..8] ~ ~ ~ 1 0.5 0.5
gamerule showDeathMessages false
tp @e[tag=UHCP_Target,sort=nearest,limit=1] 0 -64 0
kill @e[tag=UHCP_Target,sort=nearest,limit=1]
gamerule showDeathMessages true
tag @e remove UHCP_Target
tp @s 0 -64 0
kill @s