tag @s add UHCP_Owner
function uhcp:relics/durability/reset
item replace entity @s weapon.mainhand with minecraft:air
execute anchored feet positioned ~ ~0.5 ~ run summon block_display ^ ^ ^1.25 {teleport_duration:1,Tags:["UHCP_Summon","UHCP_WebSlinger","UHCP_New"],Passengers:[{id:"minecraft:item_display",teleport_duration:1,item:{id:"minecraft:cobweb",Count:1},item_display:"fixed",transformation:[1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,-0.0000f,1.0000f,0.5000f,0.0000f,-1.0000f,-0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}]}
playsound item.trident.throw master @a[distance=..4] ~ ~ ~ 1 1 1

# Assign ID if player doesn't have one already
execute unless score @s uhcp_id = @s uhcp_id run function uhcp:start/id/assign

# Owner is set to player
scoreboard players operation @e[tag=UHCP_New,sort=nearest,limit=1] uhcp_id = @s uhcp_id
execute as @e[tag=UHCP_New] at @s rotated as @p[tag=UHCP_Owner] run tp @s ~ ~ ~ ~ ~
tag @e remove UHCP_New