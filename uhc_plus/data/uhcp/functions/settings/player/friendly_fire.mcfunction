# Determine setting
execute if score @s uhcp_settings matches 424 run scoreboard players set %friendly_fire uhcp_settings 1
execute if score @s uhcp_settings matches 425 run scoreboard players set %friendly_fire uhcp_settings 0

execute if score %friendly_fire uhcp_settings matches 1 run tellraw @s [{"text":"Friendly Fire has been turned "},{"text":"ON","color":"green"},{"text":"."}]
execute if score %friendly_fire uhcp_settings matches 0 run tellraw @s [{"text":"Friendly Fire has been turned "},{"text":"OFF","color":"red"},{"text":"."}]