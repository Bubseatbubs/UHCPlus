tag @s add UHCP_Owner
function uhcp:relics/durability/reset
execute anchored feet positioned ~ ~0.5 ~ run summon block_display ^ ^ ^1.25 {teleport_duration:1,Tags:["UHCP_Summon","UHCP_WebORang","UHCP_New"],Passengers:[{id:"minecraft:item_display",teleport_duration:1,item:{id:"minecraft:cobweb"},item_display:"fixed",transformation:[1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,-0.0000f,1.0000f,0.5000f,0.0000f,-1.0000f,-0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}]}
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_radiant:1b}] run tag @e[tag=UHCP_New,sort=nearest,limit=1] add UHCP_ReturnRadiant
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_radiant:1b}] anchored feet positioned ~ ~0.5 ~ run summon block_display ^2.5 ^ ^1.25 {teleport_duration:1,Tags:["UHCP_Summon","UHCP_Radiant","UHCP_WebORang","UHCP_New"],Passengers:[{id:"minecraft:item_display",teleport_duration:1,item:{id:"minecraft:cobweb"},item_display:"fixed",transformation:[1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,-0.0000f,1.0000f,0.5000f,0.0000f,-1.0000f,-0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}]}
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_radiant:1b}] anchored feet positioned ~ ~0.5 ~ run summon block_display ^-2.5 ^ ^1.25 {teleport_duration:1,Tags:["UHCP_Summon","UHCP_Radiant","UHCP_WebORang","UHCP_New"],Passengers:[{id:"minecraft:item_display",teleport_duration:1,item:{id:"minecraft:cobweb"},item_display:"fixed",transformation:[1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,-0.0000f,1.0000f,0.5000f,0.0000f,-1.0000f,-0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}]}
item replace entity @s weapon.mainhand with minecraft:air
playsound item.trident.throw master @a[distance=..4] ~ ~ ~ 1 1 1

# Assign ID if player doesn't have one already
execute unless score @s uhcp_id = @s uhcp_id run function uhcp:start/id/assign

# Owner is set to player
scoreboard players operation @e[tag=UHCP_New,sort=nearest,limit=3] uhcp_id = @s uhcp_id
execute as @e[tag=UHCP_New] at @s rotated as @p[tag=UHCP_Owner] run tp @s ~ ~ ~ ~ ~
tag @e remove UHCP_New