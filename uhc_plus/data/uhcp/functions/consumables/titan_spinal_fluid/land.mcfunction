scoreboard players reset @s uhcp_jump
playsound minecraft:item.mace.smash_ground_heavy master @a[distance=..8] ~ ~ ~ 1000 0.75 1
particle block{block_state: "minecraft:stone"} ~ ~ ~ 6 0.1 6 0.1 500 normal
execute as @e[type=!#uhcp:inanimate_mobs,distance=..9] at @s run tp ~ ~0.25 ~
execute as @e[type=!player,predicate=uhcp:targetable,distance=..9] unless score @s uhcp_team = @a[tag=UHCP_Owner,sort=nearest,limit=1] uhcp_team run data merge entity @s {Motion:[0.0,1.25,0.0]}
execute as @e[type=!#uhcp:inanimate_mobs,distance=..9] at @s unless score @s uhcp_team = @p[tag=UHCP_Owner] uhcp_team run damage @s 9 player_attack by @p[tag=UHCP_Owner]

execute store result score %blocksfilled uhcp_titans_count run fill ~-8 ~-0.5 ~-8 ~8 ~13 ~8 air replace #uhcp:titan_can_break
execute if score %blocksfilled uhcp_titans_count matches 3.. run playsound entity.wither.break_block master @a[distance=..16] ~ ~ ~ 0.5 1.25 0.15