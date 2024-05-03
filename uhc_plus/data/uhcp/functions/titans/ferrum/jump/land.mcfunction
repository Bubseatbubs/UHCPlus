tag @s remove UHCP_IsJumping
tag @s add UHCP_CurrentFerrum
playsound minecraft:item.mace.smash_ground_heavy master @a[distance=..16] ~ ~ ~ 1 1 1
playsound minecraft:item.mace.smash_ground_heavy master @a[distance=..16] ~ ~ ~ 1 1 1
particle minecraft:explosion_emitter ~ ~ ~ 0.25 0.25 0.25 0.1 10 normal
particle minecraft:block{block_state: "minecraft:iron_block"} ~ ~ ~ 3 1 3 0.1 100 normal
fill ~-9 ~-0.5 ~-9 ~9 ~ ~9 air replace #uhcp:titan_can_break
attribute @s generic.gravity modifier remove 95c5d624-7157-4cee-95eb-0d079cbfec99
particle minecraft:dust_plume ~ ~ ~ 1 1 1 1 100 normal
kill @e[tag=UHCP_FerrumLanding,sort=nearest,limit=1,distance=..16]
execute as @a[distance=..8] run damage @s 10 falling_block by @e[tag=UHCP_CurrentFerrum,sort=nearest,limit=1]
execute as @a[distance=..8] run attribute @s generic.gravity modifier add 95c5d624-7157-4cee-95eb-0d079cbfec99 "" -0.25 add_value
tag @a[distance=..8] add UHCP_InflictedWithGravityGlobe