 execute store result score @s uhcp_initStatus run data get entity @s Health

 # 2 HP threshold
execute as @s[scores={uhcp_initStatus=..4}] run effect give @s minecraft:speed 1 0 true

# 4 HP threshold
execute as @s[scores={uhcp_initStatus=..8}] run effect give @s minecraft:resistance 1 1 true

# 8 HP threshold
execute as @s[scores={uhcp_initStatus=..16}] run effect give @s minecraft:strength 1 0 true

# 12 HP threshold
execute as @s[scores={uhcp_initStatus=..24}] run effect give @s minecraft:resistance 1 0 true
