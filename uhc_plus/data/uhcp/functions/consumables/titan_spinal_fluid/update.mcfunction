tag @s add UHCP_Owner
scoreboard players add @s uhcp_transformDuration 1

execute store result score %blocksfilled uhcp_titans_count run fill ~-4 ~ ~-4 ~4 ~13 ~4 air replace #uhcp:titan_can_break
execute if score %blocksfilled uhcp_titans_count matches 3.. run playsound entity.wither.break_block master @a[distance=..16] ~ ~ ~ 0.5 1.25 0.15
execute if score @s uhcp_jump matches 1.. if entity @s[nbt={OnGround:1b}] run function uhcp:consumables/titan_spinal_fluid/land
execute as @e[predicate=uhcp:targetable,distance=..6] unless score @s uhcp_team = @p[tag=UHCP_Owner] uhcp_team at @s run damage @s 4 player_attack by @p[tag=UHCP_Owner]

execute if score @s uhcp_transformDuration matches 500 run playsound block.note_block.harp master @s ~ ~ ~ 100 1 1
execute if score @s uhcp_transformDuration matches 520 run playsound block.note_block.harp master @s ~ ~ ~ 100 1 1
execute if score @s uhcp_transformDuration matches 540 run playsound block.note_block.harp master @s ~ ~ ~ 100 1 1
execute if score @s uhcp_transformDuration matches 560 run playsound block.note_block.harp master @s ~ ~ ~ 100 1 1
execute if score @s uhcp_transformDuration matches 580 run playsound block.note_block.harp master @s ~ ~ ~ 100 1 1

tag @s remove UHCP_Owner
execute if score @s uhcp_transformDuration matches 600.. run function uhcp:consumables/titan_spinal_fluid/reset