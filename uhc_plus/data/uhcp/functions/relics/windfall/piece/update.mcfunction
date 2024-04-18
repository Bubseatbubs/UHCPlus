scoreboard players add @s uhcp_timer 1
execute on passengers at @s run tp @s ~ ~ ~ ~30 ~
execute if score @s uhcp_timer matches ..25 run tp @s ^ ^ ^0.25
execute if score @s uhcp_timer matches 25..45 run tp @s ^ ^ ^-0.25
execute unless block ~ ~ ~ #uhcp:no_hitbox_blocks run scoreboard players set @s uhcp_timer 45
particle minecraft:block{block_state: "minecraft:gold_block"} ~ ~ ~ 0.25 0.25 0.25 0.1 1 normal

tag @s add UHCP_CurrentWindfallPiece
execute at @s as @e[predicate=uhcp:targetable,distance=..1.5] unless score @s uhcp_team = @e[tag=UHCP_CurrentWindfallPiece,sort=nearest,limit=1] uhcp_team run damage @s 6 minecraft:arrow by @e[tag=UHCP_CurrentWindfallPiece,sort=nearest,limit=1]
tag @s remove UHCP_CurrentWindfallPiece

execute unless score @s uhcp_timer matches 45.. run return 0
particle minecraft:block{block_state: "minecraft:gold_block"} ~ ~ ~ 0.25 0.25 0.25 0.1 6 normal
playsound block.stone.break master @a[distance=..4] ~ ~ ~ 1 1 0.75
execute on passengers run kill @s
kill @s

