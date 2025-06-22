scoreboard players operation %RLS_time_left_sec uhcp_game_time = @s uhcp_game_time
scoreboard players operation %RLS_time_left_sec uhcp_game_time -= %time uhcp_game_time
scoreboard players operation %RLS_time_left_sec uhcp_game_time /= #20 uhcp_const
scoreboard players operation %RLS_time_left_sec uhcp_game_time %= #60 uhcp_const
scoreboard players operation %temp uhcp_game_time = %time uhcp_game_time
scoreboard players operation %temp uhcp_game_time %= #20 uhcp_const
execute if score %RLS_time_left_sec uhcp_game_time matches ..3 if score %temp uhcp_game_time matches 9 at @s run playsound block.note_block.harp master @a[distance=..32] ~ ~2 ~ 1 2 1

bossbar set ssiege:red_sniffer name [{text:"LAST STAND (",color:gold},{score:{name:"%RLS_time_left_sec",objective:uhcp_game_time},color:gold},{text:")",color:gold}]