# Proc on-death effects of Augments

# Grand Gunpowder
execute as @s[tag=UHCP_Explode,tag=!UHCP_Creeper] run summon minecraft:creeper ~ ~ ~ {Fuse:0s,CanPickUpLoot:false}
execute as @s[tag=UHCP_Explode] run tag @s remove UHCP_Explode
execute as @s[tag=UHCP_Explode,tag=!UHCP_Creeper] run tellraw @s ["",{"text":"The "},{"text":"Grand Gunpowder","bold":true,"color":"light_purple"},{"text":" made you "},{"text":"explode","bold":true,"color":"yellow"},{"text":"!"}]

# Hunter's Insight
execute as @s[tag=!UHCP_Explode,tag=UHCP_Creeper] run summon minecraft:creeper ~ ~ ~ {Fuse:0s,CanPickUpLoot:false}

# Easter egg: Grand Gunpowder + Hunter's Blessing creates charged Creeper instead
execute as @s[tag=UHCP_Explode,tag=UHCP_Creeper] run summon minecraft:creeper ~ ~ ~ {Fuse:0s,CanPickUpLoot:false,powered:1b}
execute as @s[tag=UHCP_Explode,tag=UHCP_Creeper] run tellraw @s ["",{"text":"The "},{"text":"Grand Gunpowder and Hunter's Insight","bold":true,"color":"light_purple"},{"text":" made you "},{"text":"REALLY explode","bold":true,"color":"yellow"},{"text":"!"}]

# Grant healing orbs to enemies with augments
execute as @s[team=blue] run execute as @a[distance=..15,team=red,scores={uhcp_augment=324},gamemode=survival] run function ssiege:augments/effects/gold/healingorbs
execute as @s[team=red] run execute as @a[distance=..15,team=blue,scores={uhcp_augment=324},gamemode=survival] run function ssiege:augments/effects/gold/healingorbs

execute as @s[team=blue,scores={uhcp_augment=356}] run function ssiege:augments/effects/gold/slime_time/death

# Grants vengeance to allies with augments
execute as @s[team=blue] run execute as @a[distance=..30,team=blue,gamemode=survival] run execute if score @s uhcp_augment matches 376 run function ssiege:augments/effects/gold/vengeance
execute as @s[team=red] run execute as @a[distance=..30,team=red,gamemode=survival] run execute if score @s uhcp_augment matches 376 run function ssiege:augments/effects/gold/vengeance

# Grants Soul Siphon Effect to all players
execute as @a[distance=..32,scores={uhcp_augment=359},gamemode=survival] run function ssiege:augments/effects/gold/soulsiphon

# Raise the Dead
execute as @s[team=blue] if entity @a[team=blue,distance=..32,scores={uhcp_augment=543},gamemode=survival] at @s run function ssiege:augments/effects/prismatic/raise_the_dead
execute as @s[team=red] if entity @a[team=red,distance=..32,scores={uhcp_augment=543},gamemode=survival] at @s run function ssiege:augments/effects/prismatic/raise_the_dead