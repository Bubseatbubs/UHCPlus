give @s minecraft:bow[minecraft:enchantments={"minecraft:power":2}] 1
give @s arrow 12
tag @s add UHCP_Skeleton
playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1 1
tellraw @s [{"text":"[Hunter's Insight] ","bold":true,"color":"aqua"},{"text":"You have absorbed the power of Skeletons and gained ","color":"white"},{"text":"a powerful Bow and 8 arrows","color":"light_purple"},{"text":".","color":"white"}]
