# Check if player has eye already
advancement revoke @s only uhcp:relics/dragons_protection/ability
execute store result score %eye uhcp_a_count run clear @s ender_eye[minecraft:custom_data~{uhcp_dragoneye:1b}] 0
execute if score %eye uhcp_a_count matches 1.. run return 0

# Give eye to player
loot give @s loot uhcp:relics/dragons_protection/dragons_watchful_eye
execute at @s run playsound entity.ender_dragon.ambient master @s ~ ~ ~ 1 1 1