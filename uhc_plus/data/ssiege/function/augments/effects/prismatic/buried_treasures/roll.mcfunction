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

execute store result score @s uhcp_initStatus run random value 0..99
execute if score @s uhcp_initStatus matches 6.. run return fail
function ssiege:augments/effects/prismatic/buried_treasures/give