execute store result storage ssiege:temp runesmith.player_shards int 1 run clear @s nether_star[custom_data={ssiege_soulshard:true}] 0
execute as @s[team=blue] run execute store result storage ssiege:temp runesmith.bank_shards int 1 run scoreboard players get %blue_shards ssiege_bank
execute as @s[team=red] run execute store result storage ssiege:temp runesmith.bank_shards int 1 run scoreboard players get %red_shards ssiege_bank
function ssiege:shop/runes/consumable_macro with storage ssiege:temp runesmith