# Determine setting
execute if score @s uhcp_settings matches 100 run function uhcp:settings/border/size/lower/100
execute if score @s uhcp_settings matches 101 run function uhcp:settings/border/size/lower/250
execute if score @s uhcp_settings matches 102 run function uhcp:settings/border/size/lower/500
execute if score @s uhcp_settings matches 103 run function uhcp:settings/border/size/lower/1000
execute if score @s uhcp_settings matches 104 run function uhcp:settings/border/size/raise/100
execute if score @s uhcp_settings matches 105 run function uhcp:settings/border/size/raise/250
execute if score @s uhcp_settings matches 106 run function uhcp:settings/border/size/raise/500
execute if score @s uhcp_settings matches 107 run function uhcp:settings/border/size/raise/1000

# Check whether this setting is within the correct range
execute if score %border_size uhcp_settings matches ..99 run scoreboard players set %border_size uhcp_settings 100
execute if score %border_size uhcp_settings matches 59999969.. run scoreboard players set %border_size uhcp_settings 59999968

tellraw @s [{"text":"The border size has been set to "},{"score":{"name":"%border_size","objective":"uhcp_settings"},"color":"gold"},{"text":" blocks."}]
