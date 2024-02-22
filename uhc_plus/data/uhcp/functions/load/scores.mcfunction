# Set default arrow limit
execute unless score %arrow_limit uhcp_arrowCount matches -2147483648..2147483647 run scoreboard players set %arrow_limit uhcp_arrowCount 12

# Update apollo arrow limit augments
execute store result score %arrow_limit149 uhcp_arrowCount run scoreboard players get %arrow_limit uhcp_arrowCount
execute store result score %arrow_limit5 uhcp_arrowCount run scoreboard players get %arrow_limit uhcp_arrowCount
execute store result score %arrow_limit201 uhcp_arrowCount run scoreboard players get %arrow_limit uhcp_arrowCount
scoreboard players add %arrow_limit149 uhcp_arrowCount 8
scoreboard players add %arrow_limit5 uhcp_arrowCount 20
scoreboard players add %arrow_limit201 uhcp_arrowCount 52

# Set default dimension countdown
execute unless score %uhcp_dimTime uhcp_gameTime matches -2147483648..2147483647 run scoreboard players set %uhcp_dimTime uhcp_gameTime 48000

# Set default golden apples
execute unless score %apples uhcp_settings matches -2147483648..2147483647 run scoreboard players set %apples uhcp_settings 3

# Set default lava scoreboard values
execute unless score %uhcp_lavaInit uhcp_initStatus matches 1 run function uhcp:load/scores/lava
