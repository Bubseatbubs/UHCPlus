advancement revoke @s only uhcp:augments/attacked_with_phantom_saber

# 20% chance to proc follow up
execute store result score @s uhcp_aug_stack run random value 0..4 
execute if score @s uhcp_augment matches 221 store result score @s uhcp_aug_stack run random value 3..4 

execute unless score @s uhcp_aug_stack matches 4 run return 0

# Assign ID if player doesn't have one already
execute unless score @s uhcp_id = @s uhcp_id run function uhcp:start/id/assign

tag @s add UHCP_Owner
execute as @e[tag=UHCP_PhantomDestination] if score @s uhcp_id = @a[tag=UHCP_Owner,sort=nearest,limit=1] uhcp_id run kill @s
execute as @e[tag=UHCP_PhantomSaber] if score @s uhcp_id = @a[tag=UHCP_Owner,sort=nearest,limit=1] uhcp_id run tag @s add UHCP_FlyingTowardsTarget
execute as @e[tag=UHCP_PhantomSaber] if score @s uhcp_id = @a[tag=UHCP_Owner,sort=nearest,limit=1] uhcp_id run data merge entity @s {teleport_duration:1}

playsound minecraft:item.trident.throw master @a[distance=..4] ~ ~ ~ 1 1 0.75

scoreboard players reset @e[distance=..5] uhcp_aug_count
execute as @e[tag=!UHCP_Owner,type=!#uhcp:inanimate_mobs,distance=..5] store result score @s uhcp_aug_count run function uhcp:augments/effects/gold/phantomsaber/checkattacker
tag @e[scores={uhcp_aug_count=1},distance=..5,sort=nearest,limit=1] add UHCP_PhantomTarget
execute unless entity @e[tag=UHCP_PhantomTarget,distance=..5] run tag @s add UHCP_PhantomTarget
execute as @e[tag=UHCP_PhantomTarget,sort=nearest,limit=1] at @s anchored feet run summon minecraft:marker ~ ~1.5 ~ {Tags:["UHCP_New","UHCP_PhantomDestination"]}
scoreboard players operation @e[tag=UHCP_New,tag=UHCP_PhantomDestination] uhcp_id = @a[tag=UHCP_Owner,sort=nearest,limit=1] uhcp_id
tag @s remove UHCP_Owner
tag @e remove UHCP_PhantomTarget
tag @e remove UHCP_New

scoreboard players reset @e[distance=..5] uhcp_aug_count
scoreboard players reset @s uhcp_aug_stack
