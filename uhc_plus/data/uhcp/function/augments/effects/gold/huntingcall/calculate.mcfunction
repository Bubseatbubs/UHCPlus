# Calculate cooldown
scoreboard players operation %augment_min uhcp_timer = @s uhcp_initStatus
scoreboard players operation %augment_min uhcp_timer /= #1200 uhcp_const
scoreboard players operation @s uhcp_initStatus %= #1200 uhcp_const
scoreboard players operation @s uhcp_initStatus /= #20 uhcp_const

# Remove tag
tag @s remove UHCP_HCallCurrent

# Notify player of cooldown
execute if score @s uhcp_initStatus matches 10..59 run return run tellraw @s [{"text":"Can't cast","color":"dark_red"},{"text":" Hunting Call","color":"gold"},{"text":" yet! [","color":"dark_red"},{"text":"⏰","color":"white"},{"text":": ","color":"dark_red"},{"score":{"name":"%augment_min","objective":"uhcp_timer"},"color":"light_purple"},{"text":":","color":"light_purple"},{"score":{"name":"@s","objective":"uhcp_initStatus"},"color":"light_purple"},{"text":"]","color":"dark_red"}]
tellraw @s [{"text":"Can't cast","color":"dark_red"},{"text":" Hunting Call","color":"gold"},{"text":" yet! [","color":"dark_red"},{"text":"⏰","color":"white"},{"text":": ","color":"dark_red"},{"score":{"name":"%augment_min","objective":"uhcp_timer"},"color":"light_purple"},{"text":":0","color":"light_purple"},{"score":{"name":"@s","objective":"uhcp_initStatus"},"color":"light_purple"},{"text":"]","color":"dark_red"}]
