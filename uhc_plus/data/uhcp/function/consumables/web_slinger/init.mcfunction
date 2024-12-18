clear @s *[minecraft:custom_data~{uhcp_consumable:14b}] 1

tag @s add UHCP_Owner
execute positioned ~ ~0.5 ~ run summon minecraft:block_display ^ ^ ^1.25 {teleport_duration:1,Tags:["UHCP_Summon","UHCP_WebSlinger","UHCP_New"],Passengers:[{id:"minecraft:item_display",teleport_duration:1,item:{id:"minecraft:cobweb"},item_display:"fixed",transformation:[1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,-0.0000f,1.0000f,0.5000f,0.0000f,-1.0000f,-0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}]}
playsound minecraft:item.trident.throw master @a[distance=..4] ~ ~ ~ 1 1 1

# Assign ID if player doesn't have one already
execute unless score @s uhcp_id = @s uhcp_id run function uhcp:start/id/assign

# Owner is set to player
scoreboard players operation @n[tag=UHCP_New] uhcp_id = @s uhcp_id
execute as @e[tag=UHCP_New] rotated as @p[tag=UHCP_Owner] run rotate @s ~ ~
tag @e remove UHCP_New
tag @s remove UHCP_Owner
