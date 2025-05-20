# Reset necessary scores
scoreboard players reset @s uhcp_mine_ancientDebris
scoreboard players reset @s uhcp_mine_copperOre
scoreboard players reset @s uhcp_mine_dCopperOre
scoreboard players reset @s uhcp_mine_dGoldOre
scoreboard players reset @s uhcp_mine_dIronOre
scoreboard players reset @s uhcp_mine_goldOre
scoreboard players reset @s uhcp_mine_ironOre
scoreboard players reset @s uhcp_mine_rawCopperBlock
scoreboard players reset @s uhcp_mine_rawGoldBlock
scoreboard players reset @s uhcp_mine_rawIronBlock

# Augment selection status
execute if score %augment_countdown uhcp_game_time matches 1.. run return run execute unless score %tier uhcp_aug_tier matches -1 run bossbar set uhcp:augment players @a
execute as @s[gamemode=adventure] run function uhcp:left/in_game/start/augment
