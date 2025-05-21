scoreboard players reset @s uhcp_jump
playsound minecraft:item.mace.smash_ground_heavy master @a[distance=..8] ~ ~ ~ 1000 0.75 1
particle minecraft:block{block_state:"minecraft:stone"} ~ ~ ~ 6 0.1 6 0.1 500 normal
execute as @e[type=!#uhcp:inanimate_mobs,distance=..9] at @s run tp ~ ~0.25 ~
execute as @e[type=!minecraft:player,predicate=uhcp:targetable,distance=..9] unless score @s uhcp_team = @p[tag=UHCP_Owner] uhcp_team run data modify entity @s Motion[1] set value 1.25d
execute as @e[type=!#uhcp:inanimate_mobs,distance=..9] at @s unless score @s uhcp_team = @p[tag=UHCP_Owner] uhcp_team run damage @s 9 minecraft:player_attack by @p[tag=UHCP_Owner]

scoreboard players set %containers uhcp_settings 0
fill ~-8 ~-0.5 ~-8 ~8 ~13 ~8 minecraft:air replace #uhcp:containers destroy
execute store result score %blocksfilled uhcp_titans_count run fill ~-8 ~-0.5 ~-8 ~8 ~13 ~8 minecraft:air replace #uhcp:titan_can_break
scoreboard players set %containers uhcp_settings 1
execute if score %blocksfilled uhcp_titans_count matches 3.. run playsound minecraft:entity.wither.break_block master @a[distance=..16] ~ ~ ~ 0.5 1.25 0.15
