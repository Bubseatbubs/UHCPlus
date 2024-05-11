$bossbar set uhcp:titan_health.$(id) visible true
$execute store result bossbar uhcp:titan_health.$(id) value run data get entity @e[tag=UHCP_Titan,distance=..32,sort=nearest,limit=1] Health
$execute store result bossbar uhcp:titan_health.$(id) max run attribute @e[tag=UHCP_Titan,distance=..32,sort=nearest,limit=1] minecraft:generic.max_health get
$bossbar set uhcp:titan_health.$(id) name {"selector":"@e[tag=UHCP_Titan,distance=..32,sort=nearest,limit=1]","color":"gold"}