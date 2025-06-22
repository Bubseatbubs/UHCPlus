scoreboard players operation %red_inhib_sec uhcp_game_time = %red_inhib_respawn uhcp_game_time
scoreboard players operation %red_inhib_sec uhcp_game_time /= #20 uhcp_const
scoreboard players operation %red_inhib_min uhcp_game_time = %red_inhib_sec uhcp_game_time
scoreboard players operation %red_inhib_sec uhcp_game_time %= #60 uhcp_const
scoreboard players operation %red_inhib_min uhcp_game_time /= #60 uhcp_const

bossbar set ssiege:red_sniffer name [{text:"Red Sniffer [Vulnerable for ",color:red},{score:{name:"%red_inhib_min",objective:uhcp_game_time},color:red},{text:":",color:red},{score:{name:"%red_inhib_sec",objective:uhcp_game_time},color:red},{text:"]",color:red}]
execute if score %red_inhib_sec uhcp_game_time matches ..9 run bossbar set ssiege:red_sniffer name [{text:"Red Sniffer [Vulnerable for ",color:red},{score:{name:"%red_inhib_min",objective:uhcp_game_time},color:red},{text:":0",color:red},{score:{name:"%red_inhib_sec",objective:uhcp_game_time},color:red},{text:"]",color:red}]
