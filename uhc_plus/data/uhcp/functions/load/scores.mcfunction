# Set default arrow limit
execute unless score %arrow_limit uhcp_arrowCount matches -2147483648..2147483647 run scoreboard players set %arrow_limit uhcp_arrowCount 12

# Set default dimension countdown
execute unless score %uhcp_dimTime uhcp_gameTime matches -2147483648..2147483647 run scoreboard players set %uhcp_dimTime uhcp_gameTime 72000

# Set default golden apples
execute unless score %apples uhcp_settings matches -2147483648..2147483647 run scoreboard players set %apples uhcp_settings 3

# Set default lava scoreboard values
execute unless score %uhcp_lavaInit uhcp_initStatus matches 1 run function uhcp:load/scores/lava
