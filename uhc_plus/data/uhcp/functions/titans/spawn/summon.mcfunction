execute as @e[tag=UHCP_TitanSpawn] at @s run function uhcp:titans/spawn/summon_at_titan_spawn
execute as @e[tag=UHCP_AltarDisplay] on passengers run kill @s
execute as @e[tag=UHCP_AltarDisplay] run kill @s
tellraw @a [{"text":"The Titans","color":"#3B1CD5","bold":true},{"text":" rise...","bold":false}]

execute as @a at @s run playsound minecraft:event.mob_effect.raid_omen master @s ~ ~ ~ 1 1 1
execute as @a at @s run playsound minecraft:event.mob_effect.trial_omen master @s ~ ~ ~ 1 1 1
