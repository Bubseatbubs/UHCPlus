# Kill arrows stuck in ground
scoreboard players set %lobby_arrows uhcp_game_time 413
kill @e[type=minecraft:arrow,nbt={inGround:1b}]
kill @e[type=minecraft:spectral_arrow,nbt={inGround:1b}]
