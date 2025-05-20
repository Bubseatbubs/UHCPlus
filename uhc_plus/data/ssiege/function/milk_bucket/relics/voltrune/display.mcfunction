# Summoned item display
data merge entity @s {Tags:["UHCP_Voltrune","UHCP_Summon"],teleport_duration:5,item:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;-1866502663,-357676868,-1247017823,1972656282],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2E3Y2RhOTAwNGZjMTk3ZDY2YWZiYzJiMDAzYTViOWVmMTNjZjQ2MDBiMWZjNzQ5MDA2NzU5MGYwNDcxODFlIn19fQ=="}]}}}}

scoreboard players operation @s uhcp_team = @p[tag=UHCP_Owner] uhcp_team

execute positioned ~ ~0.6 ~ run function uhcp:relics/voltrune/particles
execute positioned ~ ~0.6 ~ rotated ~90 ~ run function uhcp:relics/voltrune/particles
execute positioned ~ ~0.6 ~ rotated ~180 ~ run function uhcp:relics/voltrune/particles
execute positioned ~ ~0.6 ~ rotated ~270 ~ run function uhcp:relics/voltrune/particles
