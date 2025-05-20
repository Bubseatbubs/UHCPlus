# Pick up bones
effect give @s minecraft:resistance 3 0 false
playsound minecraft:block.bone_block.place master @a[distance=..3] ~ ~ ~ 1 1 1

scoreboard players set @s uhcp_leave 1000
execute store result score @s uhcp_initStatus run clear @s minecraft:bone[minecraft:custom_data~{uhcp_bonecage:true}]

advancement revoke @s only uhcp:armaments/bone_cage/pickup_bone
execute if score @s uhcp_initStatus matches 2.. run function uhcp:armaments/bone_cage/continue_pickup

scoreboard players reset @s uhcp_leave
