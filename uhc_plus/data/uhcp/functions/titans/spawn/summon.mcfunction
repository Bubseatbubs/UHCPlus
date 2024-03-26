execute as @e[tag=UHCP_TitanSpawn] at @s run function uhcp:titans/spawn/summon_at_titan_spawn
execute as @e[tag=UHCP_AltarDisplay] on passengers run kill @s
execute as @e[tag=UHCP_AltarDisplay] run kill @s
tellraw @a [{"text":"The Titans","color":"#3B1CD5","bold":true},{"text":" rise...","bold":false}]

execute as @a at @s run playsound entity.ender_dragon.growl master @s ~ ~ ~ 1 0.5 1
