attribute @s minecraft:generic.max_health base set 70
effect give @s instant_health 1 10 true
effect give @s glowing 1200 1 false
tellraw @a [{"selector":"@s","color":"blue"},{"text":" selected","color":"white"},{"text":" Prime Target","color":"gold"},{"text":"!","color":"white"}]