# Determine setting
execute if score @s uhcp_settings matches 408..411 run function uhcp:settings/player/soul_apple/lower
execute if score @s uhcp_settings matches 412..415 run function uhcp:settings/player/soul_apple/raise

# Check whether this setting is within the correct range
execute if score %soul_apples uhcp_settings matches ..-1 run scoreboard players set %soul_apples uhcp_settings 0
execute if score %soul_apples uhcp_settings matches 2369.. run scoreboard players set %soul_apples uhcp_settings 2368

execute if score %soul_apples uhcp_settings matches 1 run tellraw @s [{"text":"On death, players will drop "},{"text":"1","color":"gold"},{"text":" Soul Apple."}]
execute unless score %soul_apples uhcp_settings matches 1 run tellraw @s [{"text":"On death, players will drop "},{"score":{"name":"%soul_apples","objective":"uhcp_settings"},"color":"gold"},{"text":" Soul Apples."}]
