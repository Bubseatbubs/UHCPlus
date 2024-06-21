advancement revoke @s only uhcp:augments/used_goat_horn
execute unless score @s uhcp_augment matches 12 run return 0
scoreboard players set @s uhcp_itemCount 6

# If ran before cooldown is up
execute if score @s uhcp_timer matches 1.. run scoreboard players set %augment uhcp_timer 1200
execute if score @s uhcp_timer matches 1.. run scoreboard players operation %augment_min uhcp_timer = @s uhcp_timer
execute if score @s uhcp_timer matches 1.. run scoreboard players operation %augment_min uhcp_timer /= %augment uhcp_timer
execute if score @s uhcp_timer matches 1.. run scoreboard players set %augment uhcp_timer 20
execute if score @s uhcp_timer matches 1.. run scoreboard players operation %augment_sec uhcp_timer = @s uhcp_timer
execute if score @s uhcp_timer matches 1.. run scoreboard players operation %augment_sec uhcp_timer /= %augment uhcp_timer
execute if score @s uhcp_timer matches 1.. run scoreboard players set %augment uhcp_timer 60
execute if score @s uhcp_timer matches 1.. run scoreboard players operation %augment uhcp_timer *= %augment_min uhcp_timer
execute if score @s uhcp_timer matches 1.. run scoreboard players operation %augment_sec uhcp_timer -= %augment uhcp_timer

execute if score @s uhcp_timer matches 1.. if score %augment_sec uhcp_timer matches 0..9 run tellraw @s [{"text":"Can't cast","color":"dark_red"},{"text":" Hunting Call","color":"gold"},{"text":" yet! [","color":"dark_red"},{"text":"⏰","color":"white"},{"text":": ","color":"dark_red"},{"score":{"name":"%augment_min","objective":"uhcp_timer"},"color":"light_purple"},{"text":":0","color":"light_purple"},{"score":{"name":"%augment_sec","objective":"uhcp_timer"},"color":"light_purple"},{"text":"]","color":"dark_red"}]
execute if score @s uhcp_timer matches 1.. if score %augment_sec uhcp_timer matches 10..59 run tellraw @s [{"text":"Can't cast","color":"dark_red"},{"text":" Hunting Call","color":"gold"},{"text":" yet! [","color":"dark_red"},{"text":"⏰","color":"white"},{"text":": ","color":"dark_red"},{"score":{"name":"%augment_min","objective":"uhcp_timer"},"color":"light_purple"},{"text":":","color":"light_purple"},{"score":{"name":"%augment_sec","objective":"uhcp_timer"},"color":"light_purple"},{"text":"]","color":"dark_red"}]

execute if score @s uhcp_timer matches 0.. run return 0

# Hunting Call Effect
# Assign team scoreboards
scoreboard players set @a uhcp_initStatus 0
execute as @a[gamemode=survival] run scoreboard players operation @s uhcp_initStatus = @s uhcp_team

tag @s add UHCP_HuntingCall
effect give @s minecraft:speed 20 0 false
execute as @a[distance=..150,scores={uhcp_initStatus=1..}] unless score @s uhcp_initStatus = @p[tag=UHCP_HuntingCall] uhcp_initStatus run effect give @s minecraft:glowing 20 0 true
execute as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1 1
tellraw @a [{"selector":"@s","color":"blue"},{"text":" used","color":"white"},{"text":" Hunting Call","color":"gold"},{"text":"!","color":"white"}]

scoreboard players set @s uhcp_timer 3600
tag @s remove UHCP_HuntingCall
