advancement revoke @s only uhcp:augments/attacked_with_phantom_claw

# Increase attack stacks
scoreboard players add @s uhcp_a_stack 1

execute if score @s uhcp_a_stack matches ..2 run return 0

# Assign ID if player doesn't have one already
execute unless score @s uhcp_id = @s uhcp_id run function uhcp:start/id/assign

tag @s add UHCP_Owner
execute as @e[tag=UHCP_PhantomClaw] if score @s uhcp_id = @a[tag=UHCP_Owner,sort=nearest,limit=1] uhcp_id run tag @s add UHCP_FlyingTowardsTarget
execute as @e[tag=UHCP_PhantomClaw] if score @s uhcp_id = @a[tag=UHCP_Owner,sort=nearest,limit=1] uhcp_id run data merge entity @s {teleport_duration:1}

playsound item.trident.throw master @a[distance=..4] ~ ~ ~ 1 1 0.75

scoreboard players reset @e[distance=..50] uhcp_a_count
execute as @e[tag=!UHCP_Owner,type=!#uhcp:inanimate_mobs,distance=..50] store result score @s uhcp_a_count run function uhcp:augments/effects/gold/phantomclaw/checkattacker
tag @e[scores={uhcp_a_count=1},distance=..50,sort=nearest,limit=1] add UHCP_PhantomTarget
execute unless entity @e[tag=UHCP_PhantomTarget,distance=..50] run tag @s add UHCP_PhantomTarget
execute as @e[tag=UHCP_PhantomTarget,sort=nearest,limit=1] at @s anchored feet run summon marker ~ ~1.5 ~ {Tags:["UHCP_New","UHCP_PhantomDestination"]}
scoreboard players operation @e[tag=UHCP_New,tag=UHCP_PhantomDestination] uhcp_id = @a[tag=UHCP_Owner,sort=nearest,limit=1] uhcp_id
tag @s remove UHCP_Owner
tag @e remove UHCP_PhantomTarget
tag @e remove UHCP_New

scoreboard players reset @e[distance=..5] uhcp_a_count
scoreboard players reset @s uhcp_a_stack
