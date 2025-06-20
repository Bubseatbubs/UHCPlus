# Written from perspective of defender

execute store result score %rand uhcp_initStatus run random value 0..9
execute unless score %rand uhcp_initStatus matches 0 run return fail
execute at @s[team=blue] as @a[team=red,distance=..5] run effect give @s fire_resistance 10 4 true
execute at @s[team=red] as @a[team=blue,distance=..5] run effect give @s fire_resistance 10 4 true

execute at @s run summon fireball ~ ~10 ~-1 {Motion:[0.0, -0.2, 0.0]}
execute at @s run summon fireball ~ ~10 ~ {Motion:[0.0, -0.2, 0.0]}
execute at @s run summon fireball ~ ~10 ~1 {Motion:[0.0, -0.2, 0.0]}

execute at @s run summon fireball ~-0.5 ~10 ~-1 {Motion:[0.0, -0.2, 0.0]}
execute at @s run summon fireball ~-0.5 ~10 ~ {Motion:[0.0, -0.2, 0.0]}
execute at @s run summon fireball ~-0.5 ~10 ~1 {Motion:[0.0, -0.2, 0.0]}

execute at @s run summon fireball ~1 ~10 ~1 {Motion:[0.0, -0.2, 0.0]}
execute at @s run summon fireball ~1 ~10 ~ {Motion:[0.0, -0.2, 0.0]}
execute at @s run summon fireball ~1 ~10 ~-1 {Motion:[0.0, -0.2, 0.0]}