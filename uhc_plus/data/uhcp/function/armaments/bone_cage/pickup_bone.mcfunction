effect give @s minecraft:resistance 3 0 false
playsound minecraft:block.bone_block.place master @a[distance=..3] ~ ~ ~ 1 1 1
clear @s *[minecraft:custom_data~{uhcp_bonecage:1b}] 1
advancement revoke @s only uhcp:armaments/bone_cage/pickup_bone
