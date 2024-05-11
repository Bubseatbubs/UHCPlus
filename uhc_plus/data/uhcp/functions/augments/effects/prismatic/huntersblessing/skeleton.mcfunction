give @s minecraft:bow[minecraft:enchantments={levels:{"minecraft:power":2}}] 1
tag @s add UHCP_Skeleton
playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1 1
tellraw @s [{"text":"You have absorbed the power of Skeletons and gained ","color":"white"},{"text":"a powerful Bow","color":"light_purple"},{"text":".","color":"white"}]
