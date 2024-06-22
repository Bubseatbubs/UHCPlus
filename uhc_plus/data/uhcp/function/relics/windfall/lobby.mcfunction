# Version of relic that runs in lobby
execute store result score @s uhcp_initStatus run data get entity @s Pos[1]
execute unless score @s uhcp_initStatus matches 273..282 run return fail

tag @s add UHCP_Owner
execute as @a[tag=!UHCP_Owner,team=!grace_period,distance=..9,gamemode=adventure] unless score @s uhcp_team = @p[tag=UHCP_Owner] uhcp_team run tag @s add UHCP_HarvesterTarget
execute unless entity @e[tag=UHCP_HarvesterTarget] as @e[tag=!UHCP_Invulnerable,type=!#uhcp:inanimate_mobs,type=!minecraft:player,distance=..9] unless score @s uhcp_id = @p[tag=UHCP_Owner] uhcp_id unless score @s uhcp_team = @p[tag=UHCP_Owner] uhcp_team run tag @s add UHCP_HarvesterTarget

# Stop function if no targets are near
execute unless entity @e[tag=UHCP_HarvesterTarget] run return run tag @s remove UHCP_Owner

# Scale size of block display with gapple amount
execute at @n[tag=UHCP_HarvesterTarget] anchored eyes run summon minecraft:armor_stand ~ ~5 ~ {NoGravity:0b,Silent:1b,Small:1b,Invisible:1b,Tags:["UHCP_New","UHCP_GoldBlock","UHCP_Summon"],Passengers:[{id:"minecraft:block_display",NoGravity:0b,Tags:["UHCP_GBDisplay"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,-1f,-1f],scale:[2f,2f,2f]},block_state:{Name:"minecraft:gold_block"}}]}

scoreboard players set @n[tag=UHCP_New] uhcp_aug_tier 0

execute at @n[tag=UHCP_HarvesterTarget] run playsound minecraft:block.anvil.place player @a[distance=..6] ~ ~ ~ 1.0 0.6 1.0

# Gets team value
scoreboard players operation @n[tag=UHCP_New] uhcp_team = @s uhcp_team

tag @s remove UHCP_Owner
tag @e remove UHCP_HarvesterTarget
tag @e remove UHCP_New
