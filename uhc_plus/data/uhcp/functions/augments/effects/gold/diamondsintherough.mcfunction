execute store result score %copper uhcp_a_count run clear @s coal 4
execute if score %copper uhcp_a_count matches ..2 run return 0
give @s diamond

execute store result score %copper uhcp_a_count run clear @s copper_ingot 0
execute if score %copper uhcp_a_count matches ..2 run return 0
function uhcp:augments/effects/gold/diamondsintherough