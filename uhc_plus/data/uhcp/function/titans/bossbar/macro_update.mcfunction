$bossbar set uhcp:titan_health.$(id) visible true
$execute store result bossbar uhcp:titan_health.$(id) value run data get entity @n[tag=UHCP_Titan,distance=..32] Health
$execute store result bossbar uhcp:titan_health.$(id) max run attribute @n[tag=UHCP_Titan,distance=..32] minecraft:generic.max_health get
$bossbar set uhcp:titan_health.$(id) name {"selector":"@n[tag=UHCP_Titan,distance=..32]","color":"gold"}
