# Calculate cooldown
scoreboard players set %augment uhcp_timer 1200
scoreboard players operation %augment_min uhcp_timer = @s uhcp_initStatus
scoreboard players operation %augment_sec uhcp_timer = @s uhcp_initStatus
scoreboard players operation %augment_min uhcp_timer /= %augment uhcp_timer
scoreboard players operation %augment_sec uhcp_timer %= %augment uhcp_timer
scoreboard players set %augment uhcp_timer 20
scoreboard players operation %augment_sec uhcp_timer /= %augment uhcp_timer

# Remove tag
tag @s remove UHCP_HCallCurrent

# Notify player of cooldown
execute if score %augment_sec uhcp_timer matches 10..59 run return run tellraw @s [{"text":"Can't cast","color":"dark_red"},{"text":" Hunting Call","color":"gold"},{"text":" yet! [","color":"dark_red"},{"text":"⏰","color":"white"},{"text":": ","color":"dark_red"},{"score":{"name":"%augment_min","objective":"uhcp_timer"},"color":"light_purple"},{"text":":","color":"light_purple"},{"score":{"name":"%augment_sec","objective":"uhcp_timer"},"color":"light_purple"},{"text":"]","color":"dark_red"}]
tellraw @s [{"text":"Can't cast","color":"dark_red"},{"text":" Hunting Call","color":"gold"},{"text":" yet! [","color":"dark_red"},{"text":"⏰","color":"white"},{"text":": ","color":"dark_red"},{"score":{"name":"%augment_min","objective":"uhcp_timer"},"color":"light_purple"},{"text":":0","color":"light_purple"},{"score":{"name":"%augment_sec","objective":"uhcp_timer"},"color":"light_purple"},{"text":"]","color":"dark_red"}]
