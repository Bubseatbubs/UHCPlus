# Determine setting
execute if score @s uhcp_settings matches 408 run function uhcp:settings/player/soul_apple/lower/1
execute if score @s uhcp_settings matches 409 run function uhcp:settings/player/soul_apple/lower/3
execute if score @s uhcp_settings matches 410 run function uhcp:settings/player/soul_apple/lower/5
execute if score @s uhcp_settings matches 411 run function uhcp:settings/player/soul_apple/lower/10
execute if score @s uhcp_settings matches 412 run function uhcp:settings/player/soul_apple/raise/1
execute if score @s uhcp_settings matches 413 run function uhcp:settings/player/soul_apple/raise/3
execute if score @s uhcp_settings matches 414 run function uhcp:settings/player/soul_apple/raise/5
execute if score @s uhcp_settings matches 415 run function uhcp:settings/player/soul_apple/raise/10

# Check whether this setting is within the correct range
execute if score %soul_apples uhcp_settings matches ..-1 run scoreboard players set %soul_apples uhcp_settings 0
execute if score %soul_apples uhcp_settings matches 2369.. run scoreboard players set %soul_apples uhcp_settings 2368

tellraw @s [{"text":"On death, players will drop "},{"score":{"name":"%soul_apples","objective":"uhcp_settings"},"color":"gold"},{"text":" Soul Apples."}]
