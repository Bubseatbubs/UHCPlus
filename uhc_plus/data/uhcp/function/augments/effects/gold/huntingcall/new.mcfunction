# Summon marker to track horn
execute in uhcp:main positioned 0 -64 0 summon minecraft:marker run function uhcp:augments/effects/gold/huntingcall/summon

# Assign IDs to horn
execute store result storage uhcp:hunting_call Horn.components."minecraft:custom_data".id int 1 run scoreboard players get %hunting_call uhcp_id
execute store result storage uhcp:hunting_call Horn.components."minecraft:custom_data".game_id int 1 run scoreboard players get %global uhcp_game_id

# Hunting Call effect
function uhcp:augments/effects/gold/huntingcall/effect
