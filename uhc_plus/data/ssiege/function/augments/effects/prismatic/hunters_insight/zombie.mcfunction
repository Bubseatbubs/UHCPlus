attribute @s minecraft:max_health modifier add uhcp:max_health 6 add_value
effect give @s minecraft:instant_health 1 2
tag @s add UHCP_Zombie
playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1 1
tellraw @s [{"text":"[Hunter's Insight] ","bold":true,"color":"aqua"},{"text":"You have absorbed the power of Zombies and gained ","color":"white"},{"text":"+3🖤 ","color":"red"},{"text":".","color":"white"}]
