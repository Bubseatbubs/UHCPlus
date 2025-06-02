$bossbar set uhcp:titan_health.$(id) visible true
$execute store result bossbar uhcp:titan_health.$(id) value run data get entity @n[tag=SSIEGE_sniffer,distance=..64] Health
$execute store result bossbar uhcp:titan_health.$(id) max run attribute @n[tag=SSIEGE_sniffer,distance=..64] minecraft:max_health get
$bossbar set uhcp:titan_health.$(id) name {"selector":"@n[tag=SSIEGE_sniffer,distance=..64]"}
