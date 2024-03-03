spreadplayers 0 0 10 200 false @e[tag=UHCP_TitanSpawn]
execute as @e[tag=UHCP_TitanSpawn] store result score @s uhcp_t_count run random value 0..0
execute as @e[tag=UHCP_TitanSpawn] run function uhcp:titans/spawn/position