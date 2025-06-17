 execute store result score @s uhcp_initStatus run data get entity @s Health

 # 2 HP threshold
execute as @s[scores={uhcp_initStatus=..4}] run effect give @s minecraft:speed 1 0 true

# 6 HP threshold
execute as @s[scores={uhcp_initStatus=..12}] run effect give @s minecraft:resistance 1 1 true

# 10 HP threshold
execute as @s[scores={uhcp_initStatus=..20}] run effect give @s minecraft:strength 1 0 true

# 15 HP threshold
execute as @s[scores={uhcp_initStatus=..30}] run effect give @s minecraft:resistance 1 0 true
