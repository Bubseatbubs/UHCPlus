# Summon temporary marker at current execution position to get coordinates
summon marker ~ ~ ~ {Tags:["temp_coords"]}
execute as @e[tag=temp_coords,limit=1] run execute store result score @e[tag=UHCP_Gate,limit=1,sort=nearest] ssiege_posx2 run data get entity @s Pos[0]
execute as @e[tag=temp_coords,limit=1] run execute store result score @e[tag=UHCP_Gate,limit=1,sort=nearest] ssiege_posy2 run data get entity @s Pos[1]
# Raycast triggers when intersecting blocks, thus move up 1 y level
scoreboard players add @s ssiege_posy2 1
execute as @e[tag=temp_coords,limit=1] run execute store result score @e[tag=UHCP_Gate,limit=1,sort=nearest] ssiege_posz2 run data get entity @s Pos[2]
kill @e[tag=temp_coords]

#tellraw @a [{"text":"Portal Opened to ","color":"dark_aqua"},{"score":{"name":"@e[tag=UHCP_Gate,limit=1,sort=nearest]","objective":"ssiege_posx2"}},{"text":" "},{"score":{"name":"@e[tag=UHCP_Gate,limit=1,sort=nearest]","objective":"ssiege_posy2"}},{"text":" "},{"score":{"name":"@e[tag=UHCP_Gate,limit=1,sort=nearest]","objective":"ssiege_posz2"}}]