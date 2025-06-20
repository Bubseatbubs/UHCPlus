tag @s add UHCP_Owner
scoreboard players add @s uhcp_transformDuration 1

scoreboard players set %containers uhcp_settings 0
scoreboard players operation %temp uhcp_initStatus = %time uhcp_game_time
scoreboard players operation %temp uhcp_initStatus %= #30 uhcp_const
fill ~-4 ~1 ~-4 ~4 ~13 ~4 minecraft:air replace #uhcp:containers destroy
execute if score %temp uhcp_initStatus matches 0 run fill ~-4 ~ ~-4 ~4 ~ ~4 minecraft:air replace #uhcp:containers destroy
execute store result score %blocksfilled uhcp_titans_count run fill ~-4 ~13 ~-4 ~4 ~13 ~4 minecraft:air replace #uhcp:titan_can_break
execute if score %temp uhcp_initStatus matches 0 run execute store result score %blocksfilled2 uhcp_titans_count run fill ~-4 ~ ~-4 ~4 ~ ~4 minecraft:air replace #uhcp:titan_can_break
execute if score %temp uhcp_initStatus matches 0 run scoreboard players operation %blocksfilled uhcp_titans_count += %blocksfilled2 uhcp_titans_count
scoreboard players set %containers uhcp_settings 1
execute if score %blocksfilled uhcp_titans_count matches 3.. run playsound minecraft:entity.wither.break_block master @a[distance=..16] ~ ~ ~ 0.5 1.25 0.15
scoreboard players set %blocksfilled uhcp_titans_count 0

execute as @s[scores={uhcp_jump=1..},predicate=uhcp:on_ground] run function uhcp:consumables/titan_spinal_fluid/land
execute as @e[predicate=uhcp:targetable,distance=..5] unless score @s uhcp_team = @p[tag=UHCP_Owner] uhcp_team at @s run damage @s 3.5 minecraft:player_attack by @p[tag=UHCP_Owner]

playsound minecraft:block.note_block.harp master @s[scores={uhcp_transformDuration=500}] ~ ~ ~ 100 1 1
playsound minecraft:block.note_block.harp master @s[scores={uhcp_transformDuration=520}] ~ ~ ~ 100 1 1
playsound minecraft:block.note_block.harp master @s[scores={uhcp_transformDuration=540}] ~ ~ ~ 100 1 1
playsound minecraft:block.note_block.harp master @s[scores={uhcp_transformDuration=560}] ~ ~ ~ 100 1 1
playsound minecraft:block.note_block.harp master @s[scores={uhcp_transformDuration=580}] ~ ~ ~ 100 1 1

tag @s remove UHCP_Owner
execute if score @s uhcp_transformDuration matches 600.. run function uhcp:consumables/titan_spinal_fluid/reset