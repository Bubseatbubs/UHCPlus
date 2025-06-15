execute store success score @s uhcp_initStatus run clear @s shield
execute if score @s uhcp_initStatus matches 0 run return fail

tellraw @s ["",{"text":"[Res Tier Player]","bold":true,"color":"aqua"},{"text":" You can't hold Shields!","color":"dark_red"}]
execute at @s run summon minecraft:item ~ ~ ~ {PickupDelay:40s,Item:{id:"minecraft:shield",count:1}}