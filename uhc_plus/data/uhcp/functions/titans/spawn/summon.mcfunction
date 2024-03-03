execute as @e[tag=UHCP_TitanSpawn] at @s run summon lightning_bolt
execute as @e[tag=UHCP_TitanSpawn] if score @s uhcp_t_count matches 0 at @s run function uhcp:titans/arachne/init
tellraw @a "Titans have spawned."
execute as @a at @s run playsound entity.ender_dragon.growl master @s ~ ~ ~ 1 0.5 1