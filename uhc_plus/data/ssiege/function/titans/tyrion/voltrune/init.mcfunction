tag @s add UHCP_Owner

summon minecraft:item_display ~ ~1.5 ~ {Tags:["UHCP_TyrionVoltrune","UHCP_Summon","UHCP_New"],teleport_duration:5,item:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;-1866502663,-357676868,-1247017823,1972656282],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2E3Y2RhOTAwNGZjMTk3ZDY2YWZiYzJiMDAzYTViOWVmMTNjZjQ2MDBiMWZjNzQ5MDA2NzU5MGYwNDcxODFlIn19fQ=="}]}}}}
playsound minecraft:block.enchantment_table.use player @a[distance=..12] ~ ~ ~ 1.0 0.6 1.0
playsound minecraft:entity.blaze.death player @a[distance=..12] ~ ~ ~ 1.0 2.0 1.0

execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_radiant:true}] at @s run tag @n[tag=UHCP_TyrionVoltrune,tag=UHCP_New] add UHCP_ZeusFavor

# Gets team value
scoreboard players operation @n[tag=UHCP_TyrionVoltrune,tag=UHCP_New] uhcp_team = @s uhcp_team

tag @s remove UHCP_Owner
tag @e remove UHCP_New
