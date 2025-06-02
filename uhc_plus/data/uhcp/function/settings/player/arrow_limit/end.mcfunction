# Clamp value within operational bounds
execute if score %arrow_limit uhcp_arrowCount matches ..-1 run scoreboard players set %arrow_limit uhcp_arrowCount 0
execute if score %arrow_limit uhcp_arrowCount matches 2369.. run scoreboard players set %arrow_limit uhcp_arrowCount 2368

# Update apollo arrow limit augments
scoreboard players operation %arrow_limit149 uhcp_arrowCount = %arrow_limit uhcp_arrowCount
scoreboard players operation %arrow_limit5 uhcp_arrowCount = %arrow_limit uhcp_arrowCount
scoreboard players operation %arrow_limit201 uhcp_arrowCount = %arrow_limit uhcp_arrowCount
function uhcp:settings/player/arrow_limit/add_limits

# Grant advancement under proper conditions
execute if score %time uhcp_initStatus matches 1 if score @s uhcp_settings matches 400..403 run advancement grant @a[gamemode=survival,predicate=uhcp:non_tipped_arrows] only uhcp:arrow_limit

function uhcp:settings/pages/player
execute unless score %arrow_limit uhcp_arrowCount matches 1 run return run tellraw @s [{"text":"Arrow Limit has been set to "},{"score":{"name":"%arrow_limit","objective":"uhcp_arrowCount"},"color":"gold"},{"text":" arrows."}]
tellraw @s [{"text":"Arrow Limit has been set to "},{"text":"1","color":"gold"},{"text":" arrow."}]
