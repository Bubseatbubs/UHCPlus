# Written from perspective of defender

execute store result score %rand uhcp_initStatus run random value 0..99
execute if score %rand uhcp_initStatus matches 15.. run return fail
execute at @s[team=blue] as @a[team=red,distance=..5] run effect give @s resistance 1 4 true
execute at @s[team=red] as @a[team=blue,distance=..5] run effect give @s resistance 1 4 true
execute at @s run summon lightning_bolt ~ ~ ~