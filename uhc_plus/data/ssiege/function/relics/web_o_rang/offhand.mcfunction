tag @s add UHCP_Owner
playsound minecraft:item.trident.throw master @a[distance=..4] ~ ~ ~ 1 1 1
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_radiant:true}] run return run function uhcp:relics/web_o_rang/radiant/offhand
item replace entity @s weapon.offhand with minecraft:air

# Summon Web-o-Rang
execute anchored eyes run summon minecraft:block_display ^ ^-0.5 ^1.25 {teleport_duration:1,Tags:["UHCP_Summon","UHCP_WebORang","UHCP_New"],Passengers:[{id:"minecraft:item_display",teleport_duration:1,item:{id:"minecraft:cobweb"},item_display:"fixed",transformation:[1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,-0.0000f,1.0000f,0.5000f,0.0000f,-1.0000f,-0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}]}

# Set Web-o-Rang ID
scoreboard players operation @e[tag=UHCP_New] uhcp_id = @s uhcp_id
rotate @n[tag=UHCP_New] ~ ~
tag @e remove UHCP_New
tag @s remove UHCP_Owner
