# Main tick function for snowball
# Called from time, and assumes that this is a snowball. Only executes NBT checks within this function to maybe reduce lag
execute as @s[nbt={Item:{components:{"minecraft:custom_data":{trail_snowball:1b}}}}] run scoreboard players add @s uhcp_game_time 1

# Spawn markers at trail snowball locations every tick
execute as @s[nbt={Item:{components:{"minecraft:custom_data":{trail_snowball:1b}}}},scores={uhcp_game_time=3..}] at @s run summon marker ~ ~ ~ {Tags:["trail_marker"]}

