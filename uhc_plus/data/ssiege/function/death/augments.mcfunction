# Proc on-death effects of Augments

# Grand Gunpowder / Hunter's Blessing Creeper Buff
execute as @s[tag=UHCP_Explode] run summon minecraft:creeper ~ ~ ~ {Fuse:0s,CanPickUpLoot:false}
execute as @s[tag=UHCP_Explode] run tag @s remove UHCP_Explode
execute as @s[tag=UHCP_Explode] run tellraw @s ["",{"text":"The "},{"text":"Grand Gunpowder","bold":true,"color":"light_purple"},{"text":" made you "},{"text":"explod","bold":true,"color":"yellow"},{"text":"e","color":"yellow"},{"text":"!"}]

# Grant healing orbs to enemies with augments
execute as @s[team=blue] run execute as @a[distance=..15,team=red,scores={uhcp_augment=324}] run function ssiege:augments/effects/gold/healingorbs
execute as @s[team=red] run execute as @a[distance=..15,team=blue,scores={uhcp_augment=324}] run function ssiege:augments/effects/gold/healingorbs

# Vengeance disabled
#execute as @s[team=blue] run execute as @a[distance=..30,team=blue] run execute if score @s uhcp_augment matches 376 run function ssiege:augments/effects/gold/vengeance
#execute as @s[team=red] run execute as @a[distance=..30,team=red] run execute if score @s uhcp_augment matches 376 run function ssiege:augments/effects/gold/vengeance

execute as @s[team=blue,scores={uhcp_augment=356}] run summon slime ~ ~ ~ {Team:"blue",Size:3}
execute as @s[team=blue,scores={uhcp_augment=356}] run summon slime ~ ~ ~ {Team:"blue",Size:3}
execute as @s[team=red,scores={uhcp_augment=356}] run summon slime ~ ~ ~ {Team:"red",Size:3}
execute as @s[team=red,scores={uhcp_augment=356}] run summon slime ~ ~ ~ {Team:"red",Size:3}