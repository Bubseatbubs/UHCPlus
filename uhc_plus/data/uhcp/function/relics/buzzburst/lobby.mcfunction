# Version of relic that runs in lobby
execute store result score @s uhcp_initStatus run data get entity @s Pos[1]
execute unless score @s uhcp_initStatus matches 273..282 run return fail
tag @s add UHCP_Owner
execute anchored eyes positioned ~ ~0.5 ~ run summon minecraft:arrow ^ ^0.5 ^1.25 {PierceLevel:100b,Tags:["UHCP_CurrentBuzzburst","UHCP_Buzzburst","UHCP_Summon"],Silent:1b}
scoreboard players operation @s uhcp_initStatus = @s uhcp_team
scoreboard players operation @n[tag=UHCP_CurrentBuzzburst] uhcp_team = @s uhcp_team
execute as @n[tag=UHCP_CurrentBuzzburst] at @s run function uhcp:relics/buzzburst/launch

# Assign ID if player doesn't have one already
execute unless score @s uhcp_id = @s uhcp_id run function uhcp:start/assign_id

scoreboard players operation @n[tag=UHCP_BuzzburstDisplay] uhcp_id = @s uhcp_id
scoreboard players operation @n[tag=UHCP_BuzzburstDisplay] uhcp_team = @s uhcp_team
playsound minecraft:entity.bee.hurt master @a[distance=..12] ~ ~ ~ 1 1 0.25
playsound minecraft:block.beehive.enter master @a[distance=..12] ~ ~ ~ 1 1 0.25
playsound minecraft:item.crossbow.shoot master @a[distance=..12] ~ ~ ~ 1 1 0.25
tag @s remove UHCP_Owner
