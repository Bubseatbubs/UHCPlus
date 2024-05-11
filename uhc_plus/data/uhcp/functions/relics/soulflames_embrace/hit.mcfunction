tag @s remove UHCP_SoulflameEmbrace
advancement revoke @s only uhcp:relics/soulflames_embrace/hit

tag @s add UHCP_Owner
scoreboard players reset @e[distance=..6] uhcp_aug_count
execute as @e[tag=!UHCP_Owner,predicate=uhcp:targetable,distance=..6] store result score @s uhcp_aug_count run function uhcp:relics/checkattacker
tag @e[distance=..6,scores={uhcp_aug_count=1},sort=nearest,limit=1] add UHCP_SaberTarget
execute unless entity @e[tag=UHCP_SaberTarget,distance=..6] run tag @s add UHCP_SaberTarget

# Stop function if no targets are near
execute unless entity @e[tag=UHCP_SaberTarget] run tag @s remove UHCP_Owner
execute unless entity @e[tag=UHCP_SaberTarget] run return 0

execute at @e[tag=UHCP_SaberTarget] run playsound minecraft:entity.blaze.shoot master @a[distance=..9] ~ ~ ~ 1 1 0.5
execute at @e[tag=UHCP_SaberTarget] run playsound minecraft:block.fire.ambient master @a[distance=..9] ~ ~ ~ 1 1 0.5
execute at @e[tag=UHCP_SaberTarget] run particle minecraft:soul_fire_flame ~ ~2 ~ 0.25 0.5 0.25 1 300 normal
execute at @e[tag=UHCP_SaberTarget] run particle minecraft:soul ~ ~2 ~ 0.25 0.5 0.25 1 100 normal
execute at @e[tag=UHCP_SaberTarget] run summon minecraft:marker ~ ~ ~ {Tags:["UHCP_Summon","UHCP_Saber","UHCP_New"]}


# Gets team value
scoreboard players operation @e[tag=UHCP_New,sort=nearest,limit=1] uhcp_team = @s uhcp_team
execute if entity @s[tag=UHCP_PreparePhantomPains] run tag @e[tag=UHCP_New,sort=nearest,limit=1] add UHCP_PhantomPains

tag @s remove UHCP_Owner
tag @e remove UHCP_SaberTarget
tag @e remove UHCP_New
tag @s remove UHCP_PreparePhantomPains
scoreboard players reset @s uhcp_relic_sfe_time
scoreboard players reset @e[distance=..6] uhcp_aug_count
scoreboard players reset @s uhcp_aug_stack
