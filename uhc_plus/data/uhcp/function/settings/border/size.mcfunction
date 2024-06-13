# Determine setting
execute if score @s uhcp_settings matches 100..103 run function uhcp:settings/border/size/lower
execute if score @s uhcp_settings matches 104..107 run function uhcp:settings/border/size/raise

# Check whether this setting is within the correct range
execute if score %border_size uhcp_settings matches ..99 run scoreboard players set %border_size uhcp_settings 100
execute if score %border_size uhcp_settings matches 59999969.. run scoreboard players set %border_size uhcp_settings 59999968

tellraw @s [{"text":"The border size has been set to "},{"score":{"name":"%border_size","objective":"uhcp_settings"},"color":"gold"},{"text":" blocks."}]
