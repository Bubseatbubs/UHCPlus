# Probably change to a dynamic health increase later on.
attribute @s generic.max_health base set 48
effect give @s minecraft:instant_health 1 2
effect give @s absorption infinite 1 true
tag @s add UHCP_Zombie
playsound block.note_block.harp master @s ~ ~ ~ 1 1 1
tellraw @s [{"text":"You have absorbed the power of Zombies and gained ","color":"white"},{"text":"+4🖤","color":"red"},{"text":"and","color":"white"},{"text":"+4🖤","color":"yellow"},{"text":".","color":"white"}]