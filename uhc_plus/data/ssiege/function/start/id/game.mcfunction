# Generate game ID
execute if score %global uhcp_game_id matches 0 run return run random value -2147483648..-1073741825
execute if score %global uhcp_game_id matches 1 run return run random value -1073741824..-1
execute if score %global uhcp_game_id matches 2 run return run random value 0..1073741823
return run random value 1073741824..2147483647
