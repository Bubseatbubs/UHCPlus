# Probably change to a dynamic health increase later on.
attribute @s generic.max_health base set 56
effect give @s minecraft:instant_health 1 2
tag @s add UHCP_Zombie
playsound block.note_block.harp master @s ~ ~ ~ 1 1 1
tellraw @s [{"text":"You have absorbed the power of Zombies and gained ","color":"white"},{"text":"+5🖤","color":"red"},{"text":".","color":"white"}]