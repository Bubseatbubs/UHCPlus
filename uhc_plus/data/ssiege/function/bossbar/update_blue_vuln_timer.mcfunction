scoreboard players operation %blue_inhib_sec uhcp_game_time = %blue_inhib_respawn uhcp_game_time
scoreboard players operation %blue_inhib_min uhcp_game_time = %blue_inhib_sec uhcp_game_time
scoreboard players operation %blue_inhib_sec uhcp_game_time /= %TICKS_PER_SEC uhcp_game_time
scoreboard players operation %blue_inhib_sec uhcp_game_time %= %SEC_PER_MIN uhcp_game_time
scoreboard players operation %blue_inhib_min uhcp_game_time /= %SEC_PER_MIN uhcp_game_time

bossbar set ssiege:blue_sniffer name [{text:"Blue Sniffer [Vulnerable for ",color:blue},{score:{name:"%blue_inhib_min",objective:uhcp_game_time},color:blue},{text:":",color:blue},{score:{name:"%sec",objective:uhcp_game_time},color:blue},{text:"]",color:blue}]