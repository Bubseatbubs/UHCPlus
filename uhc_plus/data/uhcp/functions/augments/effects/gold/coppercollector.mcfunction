execute store success score %copper uhcp_a_count run clear @s copper_ingot 1
execute if score %copper uhcp_a_count matches 0 run return 0
give @s gold_ingot
function uhcp:augments/effects/gold/coppercollector