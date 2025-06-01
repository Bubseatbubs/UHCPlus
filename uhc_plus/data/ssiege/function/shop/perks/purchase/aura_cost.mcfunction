execute if entity @s[team=blue] store result storage temp:ssiege cost int 1 run scoreboard players get %blue_cost ssiege_perk_aura
execute if entity @s[team=red] store result storage temp:ssiege cost int 1 run scoreboard players get %red_cost ssiege_perk_aura
function ssiege:shop/perks/purchase/aura with storage temp:ssiege