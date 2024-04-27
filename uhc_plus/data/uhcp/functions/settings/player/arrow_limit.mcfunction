# Determine setting
execute if score @s uhcp_settings matches 400 run function uhcp:settings/player/arrow_limit/lower/1
execute if score @s uhcp_settings matches 401 run function uhcp:settings/player/arrow_limit/lower/5
execute if score @s uhcp_settings matches 402 run function uhcp:settings/player/arrow_limit/lower/10
execute if score @s uhcp_settings matches 403 run function uhcp:settings/player/arrow_limit/lower/25
execute if score @s uhcp_settings matches 404 run function uhcp:settings/player/arrow_limit/raise/1
execute if score @s uhcp_settings matches 405 run function uhcp:settings/player/arrow_limit/raise/5
execute if score @s uhcp_settings matches 406 run function uhcp:settings/player/arrow_limit/raise/10
execute if score @s uhcp_settings matches 407 run function uhcp:settings/player/arrow_limit/raise/25

# Check whether this setting is within the correct range
execute if score %arrow_limit uhcp_arrowCount matches ..-1 run scoreboard players set %arrow_limit uhcp_arrowCount 0
execute if score %arrow_limit uhcp_arrowCount matches 2368.. run scoreboard players set %arrow_limit uhcp_arrowCount 2368

# Update apollo arrow limit augments
scoreboard players operation %arrow_limit149 uhcp_arrowCount = %arrow_limit uhcp_arrowCount
scoreboard players operation %arrow_limit5 uhcp_arrowCount = %arrow_limit uhcp_arrowCount
scoreboard players operation %arrow_limit201 uhcp_arrowCount = %arrow_limit uhcp_arrowCount
scoreboard players operation %arrow_limit149 uhcp_arrowCount += %arrow_limit149_def uhcp_arrowCount
scoreboard players operation %arrow_limit5 uhcp_arrowCount += %arrow_limit5_def uhcp_arrowCount
scoreboard players operation %arrow_limit201 uhcp_arrowCount += %arrow_limit201_def uhcp_arrowCount

tellraw @s [{"text":"The maximum arrow count has been set to "},{"score":{"name":"%arrow_limit","objective":"uhcp_arrowCount"},"color":"gold"},{"text":" Arrows."}]
