# Set default lava scoreboard values
execute unless score %uhcp_lava uhcp_lavaMaxHeight matches -2147483648..2147483647 run scoreboard players operation %uhcp_lava uhcp_lavaMaxHeight = %uhcp_lavaDef uhcp_lavaMaxHeight
execute unless score %uhcp_lava uhcp_lavaTime matches -2147483648..2147483647 run scoreboard players operation %uhcp_lava uhcp_lavaTime = %uhcp_lavaDef uhcp_lavaTime
execute unless score %uhcp_lava uhcp_gameTime matches -2147483648..2147483647 run scoreboard players operation %uhcp_lava uhcp_gameTime = %uhcp_lavaDef uhcp_gameTime
