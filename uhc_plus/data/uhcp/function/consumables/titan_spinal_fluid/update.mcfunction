tag @s add UHCP_Owner
scoreboard players add @s uhcp_transformDuration 1

execute store result score %blocksfilled uhcp_titans_count run fill ~-4 ~ ~-4 ~4 ~13 ~4 minecraft:air replace #uhcp:titan_can_break
execute if score %blocksfilled uhcp_titans_count matches 3.. run playsound minecraft:entity.wither.break_block master @a[distance=..16] ~ ~ ~ 0.5 1.25 0.15
execute as @s[scores={uhcp_jump=1..},predicate=uhcp:on_ground] run function uhcp:consumables/titan_spinal_fluid/land
execute as @e[predicate=uhcp:targetable,distance=..6] unless score @s uhcp_team = @p[tag=UHCP_Owner] uhcp_team at @s run damage @s 4 minecraft:player_attack by @p[tag=UHCP_Owner]

playsound minecraft:block.note_block.harp master @s[scores={uhcp_transformDuration=500}] ~ ~ ~ 100 1 1
playsound minecraft:block.note_block.harp master @s[scores={uhcp_transformDuration=520}] ~ ~ ~ 100 1 1
playsound minecraft:block.note_block.harp master @s[scores={uhcp_transformDuration=540}] ~ ~ ~ 100 1 1
playsound minecraft:block.note_block.harp master @s[scores={uhcp_transformDuration=560}] ~ ~ ~ 100 1 1
playsound minecraft:block.note_block.harp master @s[scores={uhcp_transformDuration=580}] ~ ~ ~ 100 1 1

tag @s remove UHCP_Owner
execute if score @s uhcp_transformDuration matches 600.. run function uhcp:consumables/titan_spinal_fluid/reset
