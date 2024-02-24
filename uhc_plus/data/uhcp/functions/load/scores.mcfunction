# Set default arrow limit
execute unless score %arrow_limit uhcp_arrowCount matches -2147483648..2147483647 run scoreboard players operation %arrow_limit uhcp_arrowCount = %arrow_limit_default uhcp_arrowCount

# Update apollo arrow limit augments
scoreboard players operation %arrow_limit149 uhcp_arrowCount = %arrow_limit uhcp_arrowCount
scoreboard players operation %arrow_limit5 uhcp_arrowCount = %arrow_limit uhcp_arrowCount
scoreboard players operation %arrow_limit201 uhcp_arrowCount = %arrow_limit uhcp_arrowCount
scoreboard players add %arrow_limit149 uhcp_arrowCount 8
scoreboard players add %arrow_limit5 uhcp_arrowCount 20
scoreboard players add %arrow_limit201 uhcp_arrowCount 52

# Set default dimension countdown
execute unless score %uhcp_dimTime uhcp_gameTime matches -2147483648..2147483647 run scoreboard players operation %uhcp_dimTime uhcp_gameTime = %uhcp_dimTimeDef uhcp_gameTime

# Set default golden apples
execute unless score %apples uhcp_settings matches -2147483648..2147483647 run scoreboard players operation %apples uhcp_settings = %apples_default uhcp_settings

# Set default lava scoreboard values
execute unless score %uhcp_lavaInit uhcp_initStatus matches 1 run function uhcp:load/scores/lava
