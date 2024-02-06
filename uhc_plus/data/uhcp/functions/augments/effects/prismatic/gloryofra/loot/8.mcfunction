gamerule maxEntityCramming 100
scoreboard players set %dogs uhcp_a_count 25
execute at @s run function uhcp:augments/effects/prismatic/gloryofra/spawnwolves
tag @s add UHCP_Owner
execute as @e[tag=UHCP_New,tag=UHCP_Anubis] run data modify entity @s Owner set from entity @p[tag=UHCP_Owner] UUID
execute at @s run spreadplayers ~ ~ 1 30 true @e[tag=UHCP_New,tag=UHCP_Anubis]
tag @s remove UHCP_Owner
tag @e remove UHCP_New
effect give @s strength infinite 0 false
give @s enchanted_golden_apple 1
gamerule maxEntityCramming 24