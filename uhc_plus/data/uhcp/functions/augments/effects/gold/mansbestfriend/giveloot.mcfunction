tag @s add UHCP_MansBestFriend
scoreboard players reset @e[type=minecraft:wolf] uhcp_aug_count
execute as @e[type=minecraft:wolf] store success score @s uhcp_aug_count on owner run function uhcp:augments/effects/gold/mansbestfriend/check
execute as @e[type=minecraft:wolf,scores={uhcp_aug_count=1}] at @s run loot spawn ~ ~ ~ loot uhcp:augments/mans_best_friend
execute as @e[type=minecraft:wolf,scores={uhcp_aug_count=1}] at @s run particle block{block_state: "minecraft:dirt"} ~ ~ ~ 0.5 0.5 0.5 1 50 normal
execute as @e[type=minecraft:wolf,scores={uhcp_aug_count=1}] at @s run playsound minecraft:block.gravel.break master @a[distance=..8] ~ ~ ~ 1 0.8 1

scoreboard players reset @e[type=minecraft:wolf] uhcp_aug_count

scoreboard players set @s uhcp_game_time -1
