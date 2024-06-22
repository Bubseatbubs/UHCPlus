execute unless score %game uhcp_initStatus matches 1 run return run function uhcp:relics/voltrune/lobby
tag @s add UHCP_Owner

function uhcp:relics/durability/reset

summon minecraft:item_display ~ ~1.5 ~ {Tags:["UHCP_Voltrune","UHCP_Summon","UHCP_New"],teleport_duration:5,item:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;-1866502663,-357676868,-1247017823,1972656282],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2E3Y2RhOTAwNGZjMTk3ZDY2YWZiYzJiMDAzYTViOWVmMTNjZjQ2MDBiMWZjNzQ5MDA2NzU5MGYwNDcxODFlIn19fQ=="}]}}}}
playsound minecraft:block.enchantment_table.use player @a[distance=..6] ~ ~ ~ 1.0 0.6 1.0
playsound minecraft:entity.blaze.death player @a[distance=..6] ~ ~ ~ 1.0 2.0 1.0

execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_radiant:1b}] at @s run tag @n[tag=UHCP_Voltrune,tag=UHCP_New] add UHCP_ZeusFavor

# Gets team value
scoreboard players operation @n[tag=UHCP_Voltrune,tag=UHCP_New] uhcp_team = @s uhcp_team

execute at @n[tag=UHCP_New] positioned ~ ~0.6 ~ run function uhcp:relics/voltrune/particles
execute at @n[tag=UHCP_New] positioned ~ ~0.6 ~ rotated ~90 ~ run function uhcp:relics/voltrune/particles
execute at @n[tag=UHCP_New] positioned ~ ~0.6 ~ rotated ~180 ~ run function uhcp:relics/voltrune/particles
execute at @n[tag=UHCP_New] positioned ~ ~0.6 ~ rotated ~270 ~ run function uhcp:relics/voltrune/particles

tag @s remove UHCP_Owner
tag @e remove UHCP_New
scoreboard players reset @e[distance=..6] uhcp_aug_count
scoreboard players reset @s uhcp_aug_stack
