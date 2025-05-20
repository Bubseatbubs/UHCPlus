scoreboard players add @s uhcp_timer 1

tag @s add UHCP_CurrentStand
execute as @e[tag=UHCP_SClone] if score @s uhcp_game_id = @n[tag=UHCP_CurrentStand] uhcp_game_id run tp @n[tag=UHCP_CurrentStand] @s
execute as @e[tag=UHCP_Hitbox] if score @s uhcp_game_id = @n[tag=UHCP_CurrentStand] uhcp_game_id run tp @s @n[tag=UHCP_CurrentStand]
execute at @s unless entity @e[tag=UHCP_Hitbox,distance=..0.5] run scoreboard players set @s uhcp_timer 300

scoreboard players add @s uhcp_aug_tier 1

data merge entity @s[scores={uhcp_aug_tier=4}] {Pose:{LeftLeg:[32f,0f,0f],RightLeg:[352f,0f,0f],LeftArm:[303f,0f,0f],RightArm:[24f,0f,0f]}}
data merge entity @s[scores={uhcp_aug_tier=8}] {Pose:{LeftLeg:[0f,4f,0f],RightLeg:[2f,0f,0f],LeftArm:[0f,10f,0f],RightArm:[0f,14f,0f]}}
data merge entity @s[scores={uhcp_aug_tier=12}] {Pose:{LeftLeg:[354f,0f,0f],RightLeg:[22f,0f,0f],LeftArm:[36f,0f,0f],RightArm:[315f,0f,0f]}}
data merge entity @s[scores={uhcp_aug_tier=16}] {Pose:{LeftLeg:[0f,4f,0f],RightLeg:[2f,0f,0f],LeftArm:[0f,10f,0f],RightArm:[0f,14f,0f]}}
scoreboard players reset @s[scores={uhcp_aug_tier=16}] uhcp_aug_tier

execute if score @s uhcp_timer matches ..200 run return run tag @s remove UHCP_CurrentStand

# Run when time is up
particle minecraft:campfire_signal_smoke ~ ~ ~ 1.5 0.5 1.5 0.1 50 normal
playsound minecraft:entity.armor_stand.break master @a[distance=..8] ~ ~ ~ 1 0.5 0.5
gamerule showDeathMessages false
execute as @e[tag=UHCP_SClone] if score @s uhcp_game_id = @n[tag=UHCP_CurrentStand] uhcp_game_id run tp @s 0 -64 0
execute as @e[tag=UHCP_SClone] if score @s uhcp_game_id = @n[tag=UHCP_CurrentStand] uhcp_game_id run kill @s
execute as @e[tag=UHCP_Hitbox] if score @s uhcp_game_id = @n[tag=UHCP_CurrentStand] uhcp_game_id run tp @s 0 -64 0
execute as @e[tag=UHCP_Hitbox] if score @s uhcp_game_id = @n[tag=UHCP_CurrentStand] uhcp_game_id run kill @s
kill @e[type=minecraft:experience_orb,distance=..1.5]
execute if score %game uhcp_initStatus matches 1 run gamerule showDeathMessages true
tag @s remove UHCP_CurrentStand
tp @s 0 -64 0
kill @s
