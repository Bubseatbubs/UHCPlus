execute store result score %copper uhcp_a_count run clear @s copper_ingot 3
execute if score %copper uhcp_a_count matches ..2 run return 0
give @s gold_ingot

execute store result score %copper uhcp_a_count run clear @s copper_ingot 0
execute if score %copper uhcp_a_count matches ..2 run return 0
function uhcp:augments/effects/gold/coppercollector