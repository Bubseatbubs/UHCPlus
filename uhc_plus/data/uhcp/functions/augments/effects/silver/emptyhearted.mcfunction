attribute @s minecraft:generic.max_health base set 48
effect give @s health_boost 1 1
tellraw @a [{"selector":"@s","color":"blue"},{"text":" selected","color":"white"},{"text":" Empty Hearted","color":"gold"},{"text":"!","color":"white"}]