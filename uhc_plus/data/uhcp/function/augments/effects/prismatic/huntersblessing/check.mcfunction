execute as @s[tag=!UHCP_Creeper,advancements={uhcp:augments/hunters_blessing/killed_creeper=true}] run scoreboard players add @s uhcp_aug_hb_killedCreeper 1
tellraw @s[tag=!UHCP_Creeper,advancements={uhcp:augments/hunters_blessing/killed_creeper=true}] [{"text":"Creepers ","color":"dark_red","bold":true},{"text":"Slain","color":"gray"},{"text":": [","color":"gray"},{"score":{"name":"@s","objective":"uhcp_aug_hb_killedCreeper"},"color":"light_purple"},{"text":"/5]","color":"gray"}]

execute as @s[tag=!UHCP_Zombie,advancements={uhcp:augments/hunters_blessing/killed_zombie=true}] run scoreboard players add @s uhcp_aug_hb_killedZombie 1
tellraw @s[tag=!UHCP_Zombie,advancements={uhcp:augments/hunters_blessing/killed_zombie=true}] [{"text":"Zombies ","color":"dark_red","bold":true},{"text":"Slain","color":"gray"},{"text":": [","color":"gray"},{"score":{"name":"@s","objective":"uhcp_aug_hb_killedZombie"},"color":"light_purple"},{"text":"/5]","color":"gray"}]

execute as @s[tag=!UHCP_Skeleton,advancements={uhcp:augments/hunters_blessing/killed_skeleton=true}] run scoreboard players add @s uhcp_aug_hb_killedSkeleton 1
tellraw @s[tag=!UHCP_Skeleton,advancements={uhcp:augments/hunters_blessing/killed_skeleton=true}] [{"text":"Skeletons ","color":"dark_red","bold":true},{"text":"Slain","color":"gray"},{"text":": [","color":"gray"},{"score":{"name":"@s","objective":"uhcp_aug_hb_killedSkeleton"},"color":"light_purple"},{"text":"/5]","color":"gray"}]

execute as @s[tag=!UHCP_Spider,advancements={uhcp:augments/hunters_blessing/killed_spider=true}] run scoreboard players add @s uhcp_aug_hb_killedSpider 1
tellraw @s[tag=!UHCP_Spider,advancements={uhcp:augments/hunters_blessing/killed_spider=true}] [{"text":"Spiders ","color":"dark_red","bold":true},{"text":"Slain","color":"gray"},{"text":": [","color":"gray"},{"score":{"name":"@s","objective":"uhcp_aug_hb_killedSpider"},"color":"light_purple"},{"text":"/5]","color":"gray"}]

# Reward
execute if score @s[tag=!UHCP_Creeper] uhcp_aug_hb_killedCreeper matches 5.. run function uhcp:augments/effects/prismatic/huntersblessing/creeper
execute if score @s[tag=!UHCP_Zombie] uhcp_aug_hb_killedZombie matches 5.. run function uhcp:augments/effects/prismatic/huntersblessing/zombie
execute if score @s[tag=!UHCP_Skeleton] uhcp_aug_hb_killedSkeleton matches 5.. run function uhcp:augments/effects/prismatic/huntersblessing/skeleton
execute if score @s[tag=!UHCP_Spider] uhcp_aug_hb_killedSpider matches 5.. run function uhcp:augments/effects/prismatic/huntersblessing/spider

advancement revoke @s through uhcp:augments/hunters_blessing/killed