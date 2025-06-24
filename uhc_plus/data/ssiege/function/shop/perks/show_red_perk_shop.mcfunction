execute store result storage ssiege:temp perkshop.player_diamonds int 1 run clear @s diamond 0
execute store result storage ssiege:temp perkshop.bank_diamonds int 1 run scoreboard players get %red_diamonds ssiege_bank

execute store result storage ssiege:temp perkshop.phealing_lvl int 1 run scoreboard players get %red ssiege_perk_regen
execute store result storage ssiege:temp perkshop.sregen_lvl int 1 run scoreboard players get %red ssiege_perk_aura
execute store result storage ssiege:temp perkshop.recall_lvl int 1 run scoreboard players get %red ssiege_perk_recall
execute store result storage ssiege:temp perkshop.swim_lvl int 1 run scoreboard players get %red ssiege_perk_swimspeed
execute store result storage ssiege:temp perkshop.ffall_lvl int 1 run scoreboard players get %red ssiege_perk_featherfalling
execute store result storage ssiege:temp perkshop.sonar_lvl int 1 run scoreboard players get %red ssiege_perk_sonar
execute store result storage ssiege:temp perkshop.titanslayer_lvl int 1 run scoreboard players get %red ssiege_perk_titanslayer
execute store result storage ssiege:temp perkshop.homeguard_lvl int 1 run scoreboard players get %red ssiege_perk_homeguard

execute store result storage ssiege:temp perkshop.phealing_cost int 1 run scoreboard players get %red_cost ssiege_perk_regen
execute store result storage ssiege:temp perkshop.sregen_cost int 1 run scoreboard players get %red_cost ssiege_perk_aura
execute store result storage ssiege:temp perkshop.recall_cost int 1 run scoreboard players get %red_cost ssiege_perk_recall
execute store result storage ssiege:temp perkshop.swim_cost int 1 run scoreboard players get %red_cost ssiege_perk_swimspeed
execute store result storage ssiege:temp perkshop.ffall_cost int 1 run scoreboard players get %red_cost ssiege_perk_featherfalling
execute store result storage ssiege:temp perkshop.sonar_cost int 1 run scoreboard players get %red_cost ssiege_perk_sonar
execute store result storage ssiege:temp perkshop.titanslayer_cost int 1 run scoreboard players get %red_cost ssiege_perk_titanslayer
execute store result storage ssiege:temp perkshop.homeguard_cost int 1 run scoreboard players get %red_cost ssiege_perk_homeguard

function ssiege:shop/perks/perk_macro with storage ssiege:temp perkshop