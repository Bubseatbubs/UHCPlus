# Determine setting
execute if score @s uhcp_settings matches 312..315 run function uhcp:settings/other/titans/lower
execute if score @s uhcp_settings matches 316..319 run function uhcp:settings/other/titans/raise

# Set countdown to minimum if necessary
execute if score %titans uhcp_settings matches ..-1 run scoreboard players set %titans uhcp_settings 0
execute if score %titans uhcp_settings matches 21.. run scoreboard players set %titans uhcp_settings 20

tellraw @s [{"score":{"name":"%titans","objective":"uhcp_settings"},"color":"gold"},{"text":" Titans will spawn this game.","color":"white"}]
