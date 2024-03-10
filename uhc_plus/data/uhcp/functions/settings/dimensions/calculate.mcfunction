# Set countdown to minimum if necessary
execute if score %dimension uhcp_settings matches ..-1 run scoreboard players set %dimension uhcp_settings 0

# Notify player of time
scoreboard players set %uhcp_dim uhcp_initStatus 72000
scoreboard players operation %uhcp_dimH uhcp_gameTime = %dimension uhcp_settings
scoreboard players operation %uhcp_dimH uhcp_gameTime /= %uhcp_dim uhcp_initStatus
scoreboard players set %uhcp_dim uhcp_initStatus 1200
scoreboard players operation %uhcp_dimM uhcp_gameTime = %dimension uhcp_settings
scoreboard players operation %uhcp_dimM uhcp_gameTime /= %uhcp_dim uhcp_initStatus
scoreboard players operation %uhcp_dimM2 uhcp_gameTime = %uhcp_dimM uhcp_gameTime
scoreboard players set %uhcp_dim uhcp_initStatus 60
scoreboard players operation %uhcp_dim uhcp_initStatus *= %uhcp_dimH uhcp_gameTime
scoreboard players operation %uhcp_dimM uhcp_gameTime -= %uhcp_dim uhcp_initStatus
scoreboard players set %uhcp_dim uhcp_initStatus 20
scoreboard players operation %uhcp_dimS uhcp_gameTime = %dimension uhcp_settings
scoreboard players operation %uhcp_dimS uhcp_gameTime /= %uhcp_dim uhcp_initStatus
scoreboard players set %uhcp_dim uhcp_initStatus 60
scoreboard players operation %uhcp_dim uhcp_initStatus *= %uhcp_dimM2 uhcp_gameTime
scoreboard players operation %uhcp_dimS uhcp_gameTime -= %uhcp_dim uhcp_initStatus
