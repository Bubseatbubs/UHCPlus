execute as @s[tag=!UHCP_Creeper,advancements={uhcp:augments/hunters_blessing/killed_creeper=true}] run scoreboard players add @s uhcp_aug_hb_killedCreeper 1
tellraw @s[tag=!UHCP_Creeper,advancements={uhcp:augments/hunters_blessing/killed_creeper=true}] [{"text":"[Hunter's Insight] ","bold":true,"color":"aqua"},{"text":"Creepers Slain","color":"gray","bold":false},{"text":": [","color":"gray"},{"score":{"name":"@s","objective":"uhcp_aug_hb_killedCreeper"},"color":"gray"},{"text":"/5]","color":"gray"}]

execute as @s[tag=!UHCP_Zombie,advancements={uhcp:augments/hunters_blessing/killed_zombie=true}] run scoreboard players add @s uhcp_aug_hb_killedZombie 1
tellraw @s[tag=!UHCP_Zombie,advancements={uhcp:augments/hunters_blessing/killed_zombie=true}] [{"text":"[Hunter's Insight] ","bold":true,"color":"aqua"},{"text":"Zombies Slain","color":"gray","bold":false},{"text":": [","color":"gray"},{"score":{"name":"@s","objective":"uhcp_aug_hb_killedZombie"},"color":"gray"},{"text":"/5]","color":"gray"}]

execute as @s[tag=!UHCP_Skeleton,advancements={uhcp:augments/hunters_blessing/killed_skeleton=true}] run scoreboard players add @s uhcp_aug_hb_killedSkeleton 1
tellraw @s[tag=!UHCP_Skeleton,advancements={uhcp:augments/hunters_blessing/killed_skeleton=true}] [{"text":"[Hunter's Insight] ","bold":true,"color":"aqua"},{"text":"Skeletons Slain","color":"gray","bold":false},{"text":": [","color":"gray"},{"score":{"name":"@s","objective":"uhcp_aug_hb_killedSkeleton"},"color":"gray"},{"text":"/5]","color":"gray"}]

execute as @s[tag=!UHCP_Spider,advancements={uhcp:augments/hunters_blessing/killed_spider=true}] run scoreboard players add @s uhcp_aug_hb_killedSpider 1
tellraw @s[tag=!UHCP_Spider,advancements={uhcp:augments/hunters_blessing/killed_spider=true}] [{"text":"[Hunter's Insight] ","bold":true,"color":"aqua"},{"text":"Spiders Slain","color":"gray","bold":false},{"text":": [","color":"gray"},{"score":{"name":"@s","objective":"uhcp_aug_hb_killedSpider"},"color":"gray"},{"text":"/5]","color":"gray"}]

# Reward
execute as @s[tag=!UHCP_Creeper,scores={uhcp_aug_hb_killedCreeper=5..}] run function ssiege:augments/effects/prismatic/hunters_insight/creeper
execute as @s[tag=!UHCP_Zombie,scores={uhcp_aug_hb_killedZombie=5..}] run function ssiege:augments/effects/prismatic/hunters_insight/zombie
execute as @s[tag=!UHCP_Skeleton,scores={uhcp_aug_hb_killedSkeleton=5..}] run function ssiege:augments/effects/prismatic/hunters_insight/skeleton
execute as @s[tag=!UHCP_Spider,scores={uhcp_aug_hb_killedSpider=5..}] run function ssiege:augments/effects/prismatic/hunters_insight/spider

advancement revoke @s through uhcp:augments/hunters_blessing/killed