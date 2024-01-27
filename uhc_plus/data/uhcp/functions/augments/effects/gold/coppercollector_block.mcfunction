execute store result score %copper uhcp_a_count run clear @s copper_block 1
execute if score %copper uhcp_a_count matches 0 run return 0
give @s gold_block

function uhcp:augments/effects/gold/coppercollector_block