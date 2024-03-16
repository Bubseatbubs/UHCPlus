tellraw @s [{"text":"You cannot transform into that block.","color":"dark_red"}]
playsound block.note_block.cow_bell master @s ~ ~ ~ 1 1 1
scoreboard players reset @s uhcp_a_count
scoreboard players reset @s uhcp_a_tier
scoreboard players set @s uhcp_a_timer 0