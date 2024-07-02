execute unless score %game uhcp_initStatus matches 1 run return run function uhcp:relics/buzzburst/lobby
tag @s add UHCP_Owner
function uhcp:relics/durability/reset
execute anchored eyes positioned ~ ~0.5 ~ run summon minecraft:arrow ^ ^0.5 ^1.25 {PierceLevel:100b,Tags:["UHCP_CurrentBuzzburst","UHCP_Buzzburst","UHCP_Summon"],Silent:1b}
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_radiant:1b}] at @s run tag @n[tag=UHCP_CurrentBuzzburst] add UHCP_SpawnBeeKnight
scoreboard players operation @n[tag=UHCP_CurrentBuzzburst] uhcp_team = @s uhcp_team
execute as @n[tag=UHCP_CurrentBuzzburst] at @s run function uhcp:relics/buzzburst/launch

# Assign ID if player doesn't have one already
execute unless score @s uhcp_id = @s uhcp_id run function uhcp:start/id/assign

scoreboard players operation @n[tag=UHCP_BuzzburstDisplay] uhcp_id = @s uhcp_id
scoreboard players operation @n[tag=UHCP_BuzzburstDisplay] uhcp_team = @s uhcp_team
playsound minecraft:entity.bee.hurt master @a[distance=..12] ~ ~ ~ 1 1 0.25
playsound minecraft:block.beehive.enter master @a[distance=..12] ~ ~ ~ 1 1 0.25
playsound minecraft:item.crossbow.shoot master @a[distance=..12] ~ ~ ~ 1 1 0.25
tag @s remove UHCP_Owner
