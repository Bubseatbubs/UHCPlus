# Determine setting
execute if score @s uhcp_settings matches 6..9 run function uhcp:settings/augments/ra_stacks/lower
execute if score @s uhcp_settings matches 10..13 run function uhcp:settings/augments/ra_stacks/raise

# Check whether this setting is within the correct range
execute if score %ra_stacks uhcp_settings matches ..0 run scoreboard players set %ra_stacks uhcp_settings 1
execute if score %ra_stacks uhcp_settings matches 100.. run scoreboard players set %ra_stacks uhcp_settings 99

tellraw @s [{"score":{"name":"%ra_stacks","objective":"uhcp_settings"},"color":"gold"},{"text":" stacks are required.","color":"white"}]
