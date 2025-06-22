scoreboard players operation %blue_inhib_sec uhcp_game_time = %blue_inhib_respawn uhcp_game_time
scoreboard players operation %blue_inhib_sec uhcp_game_time /= #20 uhcp_const
scoreboard players operation %blue_inhib_min uhcp_game_time = %blue_inhib_sec uhcp_game_time
scoreboard players operation %blue_inhib_sec uhcp_game_time %= #60 uhcp_const
scoreboard players operation %blue_inhib_min uhcp_game_time /= #60 uhcp_const

bossbar set ssiege:blue_sniffer name [{text:"Blue Sniffer [Vulnerable for ",color:blue},{score:{name:"%blue_inhib_min",objective:uhcp_game_time},color:blue},{text:":",color:blue},{score:{name:"%blue_inhib_sec",objective:uhcp_game_time},color:blue},{text:"]",color:blue}]
execute if score %blue_inhib_sec uhcp_game_time matches ..9 run bossbar set ssiege:blue_sniffer name [{text:"Blue Sniffer [Vulnerable for ",color:blue},{score:{name:"%blue_inhib_min",objective:uhcp_game_time},color:blue},{text:":0",color:blue},{score:{name:"%blue_inhib_sec",objective:uhcp_game_time},color:blue},{text:"]",color:blue}]