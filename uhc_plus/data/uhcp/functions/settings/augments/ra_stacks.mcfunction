# Determine setting
execute if score @s uhcp_settings matches 5 run function uhcp:settings/augments/ra_stacks/lower/1
execute if score @s uhcp_settings matches 6 run function uhcp:settings/augments/ra_stacks/lower/3
execute if score @s uhcp_settings matches 7 run function uhcp:settings/augments/ra_stacks/lower/5
execute if score @s uhcp_settings matches 8 run function uhcp:settings/augments/ra_stacks/lower/10
execute if score @s uhcp_settings matches 9 run function uhcp:settings/augments/ra_stacks/raise/1
execute if score @s uhcp_settings matches 10 run function uhcp:settings/augments/ra_stacks/raise/3
execute if score @s uhcp_settings matches 11 run function uhcp:settings/augments/ra_stacks/raise/5
execute if score @s uhcp_settings matches 12 run function uhcp:settings/augments/ra_stacks/raise/10

# Check whether this setting is within the correct range
execute if score %ra_stacks uhcp_settings matches ..0 run scoreboard players set %ra_stacks uhcp_settings 1
execute if score %ra_stacks uhcp_settings matches 10000.. run scoreboard players set %ra_stacks uhcp_settings 9999

tellraw @s [{"score":{"name":"%ra_stacks","objective":"uhcp_settings"},"color":"gold"},{"text":" stacks are required.","color":"white"}]
