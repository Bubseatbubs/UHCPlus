# Set default lava scoreboard values
execute unless score %uhcp_lava uhcp_lavaMaxHeight matches -2147483648..2147483647 run scoreboard players set %uhcp_lava uhcp_lavaMaxHeight 50
execute unless score %uhcp_lava uhcp_lavaTime matches -2147483648..2147483647 run scoreboard players set %uhcp_lava uhcp_lavaTime 8400
execute unless score %uhcp_lava uhcp_gameTime matches -2147483648..2147483647 run scoreboard players set %uhcp_lava uhcp_gameTime 48000
