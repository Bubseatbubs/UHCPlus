execute as @e[tag=UHCP_TitanSpawn] at @s run function uhcp:titans/spawn/summon_at_titan_spawn
execute as @e[tag=UHCP_AltarDisplay] on passengers run kill @s
execute as @e[tag=UHCP_AltarDisplay] run kill @s
execute if entity @e[tag=UHCP_TitanSpawn] run tellraw @a [{"text":"The Titans","color":"#d46e1c","bold":true},{"text":" rise...","bold":false,"color":"#deb018"}]

execute as @a at @s run playsound minecraft:event.mob_effect.raid_omen master @s ~ ~ ~ 1 1 1
execute as @a at @s run playsound minecraft:event.mob_effect.trial_omen master @s ~ ~ ~ 1 1 1
