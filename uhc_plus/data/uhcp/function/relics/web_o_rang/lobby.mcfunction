# Version of relic that runs in lobby
execute store result score @s uhcp_initStatus run data get entity @s Pos[1]
execute unless score @s uhcp_initStatus matches 273..282 run return fail
tag @s add UHCP_Owner
execute anchored feet positioned ~ ~0.5 ~ run summon minecraft:block_display ^ ^ ^1.25 {teleport_duration:1,Tags:["UHCP_Summon","UHCP_WebORang","UHCP_WebORangLobby","UHCP_New"],Passengers:[{id:"minecraft:item_display",teleport_duration:1,item:{id:"minecraft:cobweb"},item_display:"fixed",transformation:[1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,-0.0000f,1.0000f,0.5000f,0.0000f,-1.0000f,-0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}]}
item replace entity @s weapon.mainhand with minecraft:air
playsound minecraft:item.trident.throw master @a[distance=..4] ~ ~ ~ 1 1 1

# Assign ID if player doesn't have one already
execute unless score @s uhcp_id = @s uhcp_id run function uhcp:start/id/assign

# Owner is set to player
scoreboard players operation @e[tag=UHCP_New,sort=nearest,limit=3] uhcp_id = @s uhcp_id
execute as @e[tag=UHCP_New] at @s rotated as @p[tag=UHCP_Owner] run tp @s ~ ~ ~ ~ ~
tag @e remove UHCP_New
