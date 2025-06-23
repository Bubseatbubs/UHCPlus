advancement revoke @s only ssiege:runesmith_interact

execute as @s[team=blue] if score %blue ssiege_unlocked_runesmith matches 0 run return run tellraw @s ["",{"text":"Your team has ","color":"white"},{"text":"not unlocked","bold":true,"color":"red"},{"text":" the ","color":"white"},{"text":"Runesmith","color":"light_purple"},{"text":" yet!","color":"white"}]
execute as @s[team=red] if score %red ssiege_unlocked_runesmith matches 0 run return run tellraw @s ["",{"text":"Your team has ","color":"white"},{"text":"not unlocked","bold":true,"color":"red"},{"text":" the ","color":"white"},{"text":"Runesmith","color":"light_purple"},{"text":" yet!","color":"white"}]

execute store result storage ssiege:temp runesmith.player_shards int 1 run clear @s nether_star[custom_data={ssiege_soulshard:true}] 0
execute as @s[team=blue] run execute store result storage ssiege:temp runesmith.bank_shards int 1 run scoreboard players get %blue_shards ssiege_bank
execute as @s[team=red] run execute store result storage ssiege:temp runesmith.bank_shards int 1 run scoreboard players get %red_shards ssiege_bank
execute store result storage ssiege:temp runesmith.strength int 1 run scoreboard players get @s ssiege_rune_strength_cost
execute store result storage ssiege:temp runesmith.toughness int 1 run scoreboard players get @s ssiege_rune_toughness_cost
execute store result storage ssiege:temp runesmith.swiftness int 1 run scoreboard players get @s ssiege_rune_swiftness_cost
function ssiege:shop/runes/runesmith_macro with storage ssiege:temp runesmith