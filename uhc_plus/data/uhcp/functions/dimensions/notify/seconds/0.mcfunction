# Ensure only one marker has tag
execute unless entity @e[tag=UHCP_DimMark] run summon minecraft:marker 0 0 0 {Tags:["UHCP_DimMark"]}
tag @e[tag=UHCP_DimMark] remove UHCP_DimWork
tag @e[tag=UHCP_DimMark,limit=1] add UHCP_DimWork

# Notification
execute as @a at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 0.75 1
tellraw @s {"text":"The Nether has closed.","color":"red"}
