# Augment notifications
execute if score %time uhcp_game_time matches ..24000 run return run function uhcp:augments/notifications/first_half
execute if score %time uhcp_game_time matches ..28799 run return run execute if score %time uhcp_game_time matches 27600 run function uhcp:augments/notifications/27600
execute if score %time uhcp_game_time matches ..29999 run return run execute if score %time uhcp_game_time matches 28800 run function uhcp:augments/notifications/28800
execute if score %time uhcp_game_time matches ..32399 run return run execute if score %time uhcp_game_time matches 30000 run function uhcp:augments/notifications/30000
execute if score %time uhcp_game_time matches ..34799 run return run execute if score %time uhcp_game_time matches 32400 run function uhcp:augments/notifications/32400
execute if score %time uhcp_game_time matches ..35999 run return run execute if score %time uhcp_game_time matches 34800 run function uhcp:augments/notifications/34800
execute if score %time uhcp_game_time matches ..40799 run return run execute if score %time uhcp_game_time matches 36000 run function uhcp:augments/notifications/36000
function uhcp:augments/notifications/40800
