execute store result score %coal uhcp_a_count run clear @s coal_block 3
execute if score %coal uhcp_a_count matches ..2 run return 0
give @s diamond_block

execute store result score %coal uhcp_a_count run clear @s coal_block 0
execute if score %coal uhcp_a_count matches ..2 run return 0
function uhcp:augments/effects/gold/diamondsintherough/block