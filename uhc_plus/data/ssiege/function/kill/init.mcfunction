scoreboard players add @s ssiege_killstreak 1
scoreboard players remove @s ssiege_reverse_bounty 12000

scoreboard players add @s ssiege_kills 1
execute as @s[team=blue] run scoreboard players add %blue ssiege_kills 1
execute as @s[team=red] run scoreboard players add %red ssiege_kills 1

execute if score @s ssiege_killstreak matches 3 run return run tellraw @a ["",{"selector":"@s"},{"text":" is on a "},{"text":"killing spree","color":"yellow"},{"text":"!"}]
execute if score @s ssiege_killstreak matches 4 run return run tellraw @a ["",{"selector":"@s"},{"text":" is on a "},{"text":"rampage","color":"yellow"},{"text":"!"}]
execute if score @s ssiege_killstreak matches 5 run return run tellraw @a ["",{"selector":"@s"},{"text":" is "},{"text":"dominating","color":"yellow"},{"text":"!"}]
execute if score @s ssiege_killstreak matches 6 run return run tellraw @a ["",{"selector":"@s"},{"text":" is "},{"text":"unstoppable","color":"yellow"},{"text":"!"}]
execute if score @s ssiege_killstreak matches 7 run return run tellraw @a ["",{"selector":"@s"},{"text":" is "},{"text":"godlike","color":"yellow"},{"text":"!"}]
execute if score @s ssiege_killstreak matches 8.. run return run tellraw @a ["",{"selector":"@s"},{"text":" is "},{"text":"legendary","color":"yellow"},{"text":"!"}]