tag @s remove UHCP_IsJumping
tag @s add UHCP_CurrentFerrum
playsound minecraft:item.mace.smash_ground_heavy master @a[distance=..16] ~ ~ ~ 1 1 1
playsound minecraft:item.mace.smash_ground_heavy master @a[distance=..16] ~ ~ ~ 1 1 1
particle minecraft:explosion_emitter ~ ~ ~ 0.25 0.25 0.25 0.1 10 normal
particle minecraft:block{block_state:"minecraft:iron_block"} ~ ~ ~ 3 1 3 0.1 100 normal
fill ~-9 ~-0.5 ~-9 ~9 ~ ~9 minecraft:air replace #uhcp:titan_can_break
attribute @s minecraft:gravity modifier remove uhcp:gravity_globe
particle minecraft:dust_plume ~ ~ ~ 1 1 1 1 100 normal
kill @n[tag=UHCP_FerrumLanding,distance=..16]
execute as @a[distance=..8] run damage @s 10 minecraft:falling_block by @n[tag=UHCP_CurrentFerrum]
execute as @a[distance=..8] run attribute @s minecraft:gravity modifier add uhcp:gravity_globe -0.25 add_value
tag @a[distance=..8] add UHCP_InflictedWithGravityGlobe
