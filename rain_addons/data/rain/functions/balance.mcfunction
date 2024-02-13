#Set max hps
execute as @a[tag=14] run attribute @s minecraft:generic.max_health base set 28
execute as @a[tag=15] run attribute @s minecraft:generic.max_health base set 30
execute as @a[tag=16] run attribute @s minecraft:generic.max_health base set 32
execute as @a[tag=17] run attribute @s minecraft:generic.max_health base set 34
execute as @a[tag=18] run attribute @s minecraft:generic.max_health base set 36
execute as @a[tag=19] run attribute @s minecraft:generic.max_health base set 38

#Give Buffs
execute as @a[tag=minires] run attribute @s minecraft:generic.armor base set 1.5

effect give @a[tag=res1] resistance infinite 0 true
effect give @a[tag=res2] resistance infinite 1 true

effect give @a[tag=str1] strength infinite 0 true
effect give @a[tag=str2] strength infinite 1 true