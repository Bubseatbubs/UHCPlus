# Determine setting
execute if score @s uhcp_settings matches 400..403 run function uhcp:settings/player/arrow_limit/lower
execute if score @s uhcp_settings matches 404..407 run function uhcp:settings/player/arrow_limit/raise

# Check whether this setting is within the correct range
execute if score %arrow_limit uhcp_arrowCount matches ..-1 run scoreboard players set %arrow_limit uhcp_arrowCount 0
execute if score %arrow_limit uhcp_arrowCount matches 2369.. run scoreboard players set %arrow_limit uhcp_arrowCount 2368

# Update apollo arrow limit augments
scoreboard players operation %arrow_limit149 uhcp_arrowCount = %arrow_limit uhcp_arrowCount
scoreboard players operation %arrow_limit5 uhcp_arrowCount = %arrow_limit uhcp_arrowCount
scoreboard players operation %arrow_limit201 uhcp_arrowCount = %arrow_limit uhcp_arrowCount
scoreboard players operation %arrow_limit149 uhcp_arrowCount += %arrow_limit149_def uhcp_settings
scoreboard players operation %arrow_limit5 uhcp_arrowCount += %arrow_limit5_def uhcp_settings
scoreboard players operation %arrow_limit201 uhcp_arrowCount += %arrow_limit201_def uhcp_settings

execute if score %arrow_limit uhcp_arrowCount matches 1 run tellraw @s [{"text":"The maximum arrow count has been set to "},{"text":"1","color":"gold"},{"text":" arrow."}]
execute unless score %arrow_limit uhcp_arrowCount matches 1 run tellraw @s [{"text":"The maximum arrow count has been set to "},{"score":{"name":"%arrow_limit","objective":"uhcp_arrowCount"},"color":"gold"},{"text":" arrows."}]

# Grant advancement under proper conditions
execute unless score %game uhcp_initStatus matches 1 if score @s uhcp_settings matches 400..403 run advancement grant @a[gamemode=survival] only uhcp:arrow_limit
