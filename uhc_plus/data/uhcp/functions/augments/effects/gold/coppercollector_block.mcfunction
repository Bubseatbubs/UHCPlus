execute store result score %copper uhcp_a_count run clear @s copper_block 10
execute if score %copper uhcp_a_count matches ..2 run return 0
give @s gold_block

execute store result score %copper uhcp_a_count run clear @s copper_block 0
execute if score %copper uhcp_a_count matches ..2 run return 0
function uhcp:augments/effects/gold/coppercollector_block