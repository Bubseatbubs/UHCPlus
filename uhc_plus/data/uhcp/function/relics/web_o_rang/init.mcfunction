execute unless score %game uhcp_initStatus matches 1 run return run function uhcp:relics/web_o_rang/lobby
tag @s add UHCP_Owner
function uhcp:relics/durability/reset
execute positioned ~ ~0.5 ~ run summon minecraft:block_display ^ ^ ^1.25 {teleport_duration:1,Tags:["UHCP_Summon","UHCP_WebORang","UHCP_New"],Passengers:[{id:"minecraft:item_display",teleport_duration:1,item:{id:"minecraft:cobweb"},item_display:"fixed",transformation:[1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,-0.0000f,1.0000f,0.5000f,0.0000f,-1.0000f,-0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}]}
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_radiant:1b}] run function uhcp:relics/web_o_rang/radiant
item replace entity @s weapon.mainhand with minecraft:air
playsound minecraft:item.trident.throw master @a[distance=..4] ~ ~ ~ 1 1 1

# Assign ID if player doesn't have one already
execute unless score @s uhcp_id = @s uhcp_id run function uhcp:start/id/assign

# Owner is set to player
scoreboard players operation @e[tag=UHCP_New,sort=nearest,limit=3] uhcp_id = @s uhcp_id
execute as @e[tag=UHCP_New] rotated as @p[tag=UHCP_Owner] run rotate @s ~ ~
tag @e remove UHCP_New
