# Probably change to a dynamic health increase later on.
attribute @s minecraft:max_health modifier add uhcp:max_health 8 add_value
effect give @s minecraft:instant_health 1 2
effect give @s minecraft:absorption infinite 1 true
tag @s add UHCP_Zombie
playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1 1
tellraw @s [{"text":"You have absorbed the power of Zombies and gained ","color":"white"},{"text":"+4🖤 ","color":"red"},{"text":"and ","color":"white"},{"text":"+4🖤","color":"yellow"},{"text":".","color":"white"}]
