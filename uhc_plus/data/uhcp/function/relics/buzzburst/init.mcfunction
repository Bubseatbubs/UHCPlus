function uhcp:relics/durability/reset
tag @s add UHCP_Owner
execute anchored eyes positioned ~ ~0.5 ~ run summon minecraft:arrow ^ ^0.5 ^1.25 {PierceLevel:100b,Tags:["UHCP_CurrentBuzzburst","UHCP_Buzzburst","UHCP_Summon"],Silent:1b}
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_radiant:1b}] at @s run tag @e[tag=UHCP_CurrentBuzzburst,sort=nearest,limit=1] add UHCP_SpawnBeeKnight
scoreboard players operation @e[tag=UHCP_CurrentBuzzburst,sort=nearest,limit=1] uhcp_team = @s uhcp_team
execute as @e[tag=UHCP_CurrentBuzzburst,sort=nearest,limit=1] at @s run function uhcp:relics/buzzburst/launch

# Assign ID if player doesn't have one already
execute unless score @s uhcp_id = @s uhcp_id run function uhcp:start/id/assign

scoreboard players operation @e[tag=UHCP_BuzzburstDisplay,sort=nearest,limit=1] uhcp_id = @s uhcp_id
scoreboard players operation @e[tag=UHCP_BuzzburstDisplay,sort=nearest,limit=1] uhcp_team = @s uhcp_team
playsound minecraft:entity.bee.hurt master @a[distance=..12] ~ ~ ~ 1 1 0.25
playsound minecraft:block.beehive.enter master @a[distance=..12] ~ ~ ~ 1 1 0.25
playsound minecraft:item.crossbow.shoot master @a[distance=..12] ~ ~ ~ 1 1 0.25
tag @s remove UHCP_Owner