# First half of augment notifications
execute if score %time uhcp_game_time matches ..8399 run return run execute if score %time uhcp_game_time matches 3600 run function uhcp:augments/notifications/3600
execute if score %time uhcp_game_time matches ..11999 run return run execute if score %time uhcp_game_time matches 8400 run function uhcp:augments/notifications/8400
execute if score %time uhcp_game_time matches ..16799 run return run execute if score %time uhcp_game_time matches 12000 run function uhcp:augments/notifications/12000
execute if score %time uhcp_game_time matches ..17999 run return run execute if score %time uhcp_game_time matches 16800 run function uhcp:augments/notifications/16800
execute if score %time uhcp_game_time matches ..22799 run return run execute if score %time uhcp_game_time matches 18000 run function uhcp:augments/notifications/18000
execute if score %time uhcp_game_time matches ..23999 run return run execute if score %time uhcp_game_time matches 22800 run function uhcp:augments/notifications/22800
function uhcp:augments/notifications/24000
