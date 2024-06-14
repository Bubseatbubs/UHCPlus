execute at @s as @e[type=!#uhcp:inanimate_mobs,distance=..3] unless score @s uhcp_team = @n[tag=UHCP_BoneBlock] uhcp_team run damage @s 8 minecraft:falling_block

particle minecraft:block{block_state:"minecraft:bone_block"} ~ ~ ~ 3 3 3 0.1 700 normal
particle minecraft:cloud ~ ~ ~ 0.25 0.25 0.25 1 75 normal
playsound minecraft:block.anvil.land master @a[distance=..12.5] ~ ~ ~ 1 0.9 0.8

execute on passengers run kill @s
kill @s
