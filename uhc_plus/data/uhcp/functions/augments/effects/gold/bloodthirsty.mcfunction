playsound minecraft:entity.polar_bear.warning master @s ~ ~ ~ 1 1 1
effect give @s strength 15 0 true
tellraw @a [{"selector":"@s","color":"blue"},{"text":" selected","color":"white"},{"text":" Bloodthirsty","color":"gold"},{"text":"!","color":"white"}]