# Summon marker to track horn
execute in uhcp:main positioned 0 -64 0 summon minecraft:marker run function uhcp:augments/effects/gold/huntingcall/summon

# Assign IDs to horn
execute store result storage uhcp:hunting_call Horn.components."minecraft:custom_data".id int 1 run scoreboard players get %hunting_call uhcp_id
data modify storage uhcp:hunting_call Horn.components."minecraft:custom_data".game_id set from storage uhcp:id game.id

# Hunting Call effect
function uhcp:augments/effects/gold/huntingcall/effect
