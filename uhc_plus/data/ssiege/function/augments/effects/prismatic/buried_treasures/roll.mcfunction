scoreboard players set @s ssiege_mine_copper 0
scoreboard players set @s ssiege_mine_dcopper 0
scoreboard players set @s ssiege_mine_coal 0
scoreboard players set @s ssiege_mine_dcoal 0
scoreboard players set @s ssiege_mine_iron 0
scoreboard players set @s ssiege_mine_diron 0
scoreboard players set @s ssiege_mine_gold 0
scoreboard players set @s ssiege_mine_dgold 0
scoreboard players set @s ssiege_mine_redstone 0
scoreboard players set @s ssiege_mine_dredstone 0
scoreboard players set @s ssiege_mine_emerald 0
scoreboard players set @s ssiege_mine_demerald 0
scoreboard players set @s ssiege_mine_lapis 0
scoreboard players set @s ssiege_mine_dlapis 0
scoreboard players set @s ssiege_mine_ddiamonds 0
scoreboard players set @s ssiege_mine_diamonds 0
playsound block.note_block.chime master @s ~ ~ ~ 1 1 1
tellraw @s ["",{"text":"[Buried Treasure]","color":"aqua"},{"text":" You found treasure inside the ore!","color":"white"}]
 loot give @s loot ssiege:augments/buried_treasures