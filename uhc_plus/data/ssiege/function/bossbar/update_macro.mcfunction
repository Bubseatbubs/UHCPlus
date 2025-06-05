$bossbar set ssiege:blue_sniffer value $(blue_hp)
$bossbar set ssiege:red_sniffer value $(red_hp)

execute if score %blue_inhib_up uhcp_game_time matches 1 run bossbar set ssiege:blue_sniffer name {text:"Blue Sniffer [Protected]",color:blue}
execute if score %red_inhib_up uhcp_game_time matches 1 run bossbar set ssiege:red_sniffer name {text:"Red Sniffer [Protected]",color:red}

execute if score %blue_inhib_up uhcp_game_time matches 0 run bossbar set ssiege:blue_sniffer name [{text:"Blue Sniffer [Vulnerable for ",color:blue},{score:{name:"%blue_inhib_sec",objective:uhcp_game_time},color:blue},{text:" sec]",color:blue}]
execute if score %red_inhib_up uhcp_game_time matches 0 run bossbar set ssiege:red_sniffer name [{text:"Red Sniffer [Vulnerable for ",color:red},{score:{name:"%red_inhib_sec",objective:uhcp_game_time},color:red},{text:" sec]",color:red}]