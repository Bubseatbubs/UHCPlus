advancement revoke @s only uhcp:relics/hurt_with_soulflame_saber
tag @s add UHCP_Owner

scoreboard players reset @e[distance=..6] uhcp_a_count
execute as @e[tag=!UHCP_Owner,type=!#uhcp:inanimate_mobs,distance=..6] store result score @s uhcp_a_count run function uhcp:relics/checkattacker
tag @e[distance=..6,scores={uhcp_a_count=1},sort=nearest,limit=1] add UHCP_SaberTarget

# Stop function if no targets are near
execute unless entity @e[tag=UHCP_SaberTarget] run tag @s remove UHCP_Owner
execute unless entity @e[tag=UHCP_SaberTarget] run return 0

execute at @e[tag=UHCP_SaberTarget] run playsound entity.blaze.shoot master @a[distance=..9] ~ ~ ~ 1 1 0.5
execute at @e[tag=UHCP_SaberTarget] run playsound block.fire.ambient master @a[distance=..9] ~ ~ ~ 1 1 0.5
execute at @e[tag=UHCP_SaberTarget] run particle soul_fire_flame ~ ~2 ~ 0.25 0.5 0.25 1 300 normal
execute at @e[tag=UHCP_SaberTarget] run particle soul ~ ~2 ~ 0.25 0.5 0.25 1 100 normal
execute at @e[tag=UHCP_SaberTarget] run summon marker ~ ~ ~ {Tags:["UHCP_Summon","UHCP_Saber","UHCP_New"]}

execute store result storage uhcp:cd cDamage int 1 run scoreboard players set %damage uhcp_a_durability 10
item modify entity @s weapon.mainhand uhcp:update_dur

# Assign Team Scoreboards
execute if entity @a[predicate=uhcp:teams/solo] run function uhcp:teams/solo
execute if entity @a[predicate=uhcp:teams/team] run function uhcp:teams/team
scoreboard players set @a[predicate=uhcp:teams/neither] uhcp_team 0
scoreboard players set @a[gamemode=!survival] uhcp_team 0

# Gets team value
execute store result score @e[tag=UHCP_New,sort=nearest,limit=1] uhcp_team run scoreboard players get @s uhcp_team

tag @s remove UHCP_Owner
tag @e remove UHCP_SaberTarget
tag @e remove UHCP_New
scoreboard players reset @e[distance=..6] uhcp_a_count
scoreboard players reset @s uhcp_a_stack