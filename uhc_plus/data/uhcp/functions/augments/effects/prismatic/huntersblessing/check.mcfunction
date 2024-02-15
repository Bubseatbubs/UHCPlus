execute as @s[tag=!UHCP_Creeper,advancements={uhcp:augments/hunters_blessing/killed_creeper=true}] run scoreboard players add @s uhcp_hb_killedCreeper 1
execute as @s run tellraw @s[tag=!UHCP_Creeper,advancements={uhcp:augments/hunters_blessing/killed_creeper=true}] [{"text":"Creepers Slain: [","color":"white"},{"score":{"name":"@s","objective":"uhcp_hb_killedCreeper"},"color":"light_purple"},{"text":"/10]","color":"white"}]

execute as @s[tag=!UHCP_Zombie,advancements={uhcp:augments/hunters_blessing/killed_zombie=true}] run scoreboard players add @s uhcp_hb_killedZombie 1
execute as @s run tellraw @s[tag=!UHCP_Zombie,advancements={uhcp:augments/hunters_blessing/killed_zombie=true}] [{"text":"Zombies Slain: [","color":"white"},{"score":{"name":"@s","objective":"uhcp_hb_killedZombie"},"color":"light_purple"},{"text":"/10]","color":"white"}]

execute as @s[tag=!UHCP_Skeleton,advancements={uhcp:augments/hunters_blessing/killed_skeleton=true}] run scoreboard players add @s uhcp_hb_killedSkeleton 1
execute as @s run tellraw @s[tag=!UHCP_Skeleton,advancements={uhcp:augments/hunters_blessing/killed_skeleton=true}] [{"text":"Skeletons Slain: [","color":"white"},{"score":{"name":"@s","objective":"uhcp_hb_killedSkeleton"},"color":"light_purple"},{"text":"/10]","color":"white"}]

execute as @s[tag=!UHCP_Spider,advancements={uhcp:augments/hunters_blessing/killed_spider=true}] run scoreboard players add @s uhcp_hb_killedSpider 1
execute as @s run tellraw @s[tag=!UHCP_Spider,advancements={uhcp:augments/hunters_blessing/killed_spider=true}] [{"text":"Spiders Slain: [","color":"white"},{"score":{"name":"@s","objective":"uhcp_hb_killedSpider"},"color":"light_purple"},{"text":"/10]","color":"white"}]

# Reward
execute if score @s[tag=!UHCP_Creeper] uhcp_hb_killedCreeper matches 5.. run function uhcp:augments/effects/prismatic/huntersblessing/creeper
execute if score @s[tag=!UHCP_Zombie] uhcp_hb_killedZombie matches 5.. run function uhcp:augments/effects/prismatic/huntersblessing/zombie
execute if score @s[tag=!UHCP_Skeleton] uhcp_hb_killedSkeleton matches 5.. run function uhcp:augments/effects/prismatic/huntersblessing/skeleton
execute if score @s[tag=!UHCP_Spider] uhcp_hb_killedSpider matches 5.. run function uhcp:augments/effects/prismatic/huntersblessing/spider

advancement revoke @s through uhcp:augments/hunters_blessing/killed