scoreboard players add @s uhcp_timer 1


tag @s add UHCP_CurrentStand
execute as @e[tag=UHCP_SClone] if score @s uhcp_id = @e[tag=UHCP_CurrentStand,sort=nearest,limit=1] uhcp_id run tp @e[tag=UHCP_CurrentStand,sort=nearest,limit=1] @s
execute as @e[tag=UHCP_Hitbox] if score @s uhcp_id = @e[tag=UHCP_CurrentStand,sort=nearest,limit=1] uhcp_id run tp @s @e[tag=UHCP_CurrentStand,sort=nearest,limit=1]
execute at @s unless entity @e[tag=UHCP_Hitbox,distance=..0.5] run scoreboard players set @s uhcp_timer 300

scoreboard players add @s uhcp_aug_tier 1

execute if score @s uhcp_aug_tier matches 4 run data merge entity @s {Pose:{LeftLeg:[32f,0f,0f],RightLeg:[352f,0f,0f],LeftArm:[303f,0f,0f],RightArm:[24f,0f,0f]}}
execute if score @s uhcp_aug_tier matches 8 run data merge entity @s {Pose:{LeftLeg:[0f,4f,0f],RightLeg:[2f,0f,0f],LeftArm:[0f,10f,0f],RightArm:[0f,14f,0f]}}
execute if score @s uhcp_aug_tier matches 12 run data merge entity @s {Pose:{LeftLeg:[354f,0f,0f],RightLeg:[22f,0f,0f],LeftArm:[36f,0f,0f],RightArm:[315f,0f,0f]}}
execute if score @s uhcp_aug_tier matches 16 run data merge entity @s {Pose:{LeftLeg:[0f,4f,0f],RightLeg:[2f,0f,0f],LeftArm:[0f,10f,0f],RightArm:[0f,14f,0f]}}
execute if score @s uhcp_aug_tier matches 16 run scoreboard players reset @s uhcp_aug_tier

execute if score @s uhcp_timer matches ..200 run return run tag @s remove UHCP_CurrentStand

# Run when time is up
particle minecraft:campfire_signal_smoke ~ ~ ~ 1.5 0.5 1.5 0.1 50 normal
playsound entity.armor_stand.break master @a[distance=..8] ~ ~ ~ 1 0.5 0.5
gamerule showDeathMessages false
execute as @e[tag=UHCP_SClone] if score @s uhcp_id = @e[tag=UHCP_CurrentStand,sort=nearest,limit=1] uhcp_id run tp @s 0 -64 0
execute as @e[tag=UHCP_SClone] if score @s uhcp_id = @e[tag=UHCP_CurrentStand,sort=nearest,limit=1] uhcp_id run kill @s
execute as @e[tag=UHCP_Hitbox] if score @s uhcp_id = @e[tag=UHCP_CurrentStand,sort=nearest,limit=1] uhcp_id run tp @s 0 -64 0
execute as @e[tag=UHCP_Hitbox] if score @s uhcp_id = @e[tag=UHCP_CurrentStand,sort=nearest,limit=1] uhcp_id run kill @s
kill @e[type=experience_orb,distance=..1.5]
gamerule showDeathMessages true
tag @s remove UHCP_CurrentStand
tp @s 0 -64 0
kill @s
