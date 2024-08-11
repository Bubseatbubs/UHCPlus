# Kill arrows stuck in ground
scoreboard players set %lobby_arrows uhcp_game_time 413
kill @e[type=#uhcp:arrow,tag=!UHCP_Buzzburst,nbt={inGround:1b}]
