scoreboard players add @s uhcp_timer 1
execute on passengers at @s run tp @s ~ ~ ~ ~30 ~
execute if score @s uhcp_timer matches ..35 run tp @s ^ ^ ^0.25
execute if score @s uhcp_timer matches 35..70 run tp @s ^ ^ ^-0.25
execute unless block ~ ~ ~ #uhcp:no_hitbox_blocks run scoreboard players set @s uhcp_timer 35
particle enchanted_hit ~ ~0.5 ~ 0.01 0.01 0.01 0.1 1 normal

tag @s add UHCP_CurrentWindfallPiece
execute at @s as @e[predicate=uhcp:targetable,distance=..1.5] unless score @s uhcp_team = @e[tag=UHCP_CurrentWindfallPiece,sort=nearest,limit=1] uhcp_team run damage @s 10 minecraft:arrow by @e[tag=UHCP_CurrentWindfallPiece,sort=nearest,limit=1]
tag @s remove UHCP_CurrentWindfallPiece

execute unless score @s uhcp_timer matches 70.. run return 0
playsound block.stone.break master @a[distance=..4] ~ ~ ~ 1 1 0.75
execute on passengers run kill @s
kill @s
