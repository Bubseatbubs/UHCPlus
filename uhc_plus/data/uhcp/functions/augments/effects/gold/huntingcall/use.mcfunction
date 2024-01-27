advancement revoke @s only uhcp:augments/used_goat_horn
execute unless score @s uhcp_a_selectedAugment matches 12 run return 0

# If ran before cooldown is up
execute if score @s uhcp_a_timer matches 1.. run scoreboard players set %uhcp_augment uhcp_a_timer 1200
execute if score @s uhcp_a_timer matches 1.. run scoreboard players operation %uhcp_augmentM uhcp_a_timer = @s uhcp_a_timer
execute if score @s uhcp_a_timer matches 1.. run scoreboard players operation %uhcp_augmentM uhcp_a_timer /= %uhcp_augment uhcp_a_timer
execute if score @s uhcp_a_timer matches 1.. run scoreboard players set %uhcp_augment uhcp_a_timer 20
execute if score @s uhcp_a_timer matches 1.. run scoreboard players operation %uhcp_augmentS uhcp_a_timer = @s uhcp_a_timer
execute if score @s uhcp_a_timer matches 1.. run scoreboard players operation %uhcp_augmentS uhcp_a_timer /= %uhcp_augment uhcp_a_timer
execute if score @s uhcp_a_timer matches 1.. run scoreboard players set %uhcp_augment uhcp_a_timer 60
execute if score @s uhcp_a_timer matches 1.. run scoreboard players operation %uhcp_augment uhcp_a_timer *= %uhcp_augmentM uhcp_a_timer
execute if score @s uhcp_a_timer matches 1.. run scoreboard players operation %uhcp_augmentS uhcp_a_timer -= %uhcp_augment uhcp_a_timer

execute if score @s uhcp_a_timer matches 1.. if score %uhcp_augmentS uhcp_a_timer matches 0..9 run tellraw @s [{"text":"Can't cast","color":"dark_red"},{"text":" Hunting Call","color":"gold"},{"text":" yet! [","color":"dark_red"},{"text":"⏰","color":"white"},{"text":": ","color":"dark_red"},{"score":{"name":"%uhcp_augmentM","objective":"uhcp_a_timer"},"color":"light_purple"},{"text":":0","color":"light_purple"},{"score":{"name":"%uhcp_augmentS","objective":"uhcp_a_timer"},"color":"light_purple"},{"text":"]","color":"dark_red"}]
execute if score @s uhcp_a_timer matches 1.. if score %uhcp_augmentS uhcp_a_timer matches 10..59 run tellraw @s [{"text":"Can't cast","color":"dark_red"},{"text":" Hunting Call","color":"gold"},{"text":" yet! [","color":"dark_red"},{"text":"⏰","color":"white"},{"text":": ","color":"dark_red"},{"score":{"name":"%uhcp_augmentM","objective":"uhcp_a_timer"},"color":"light_purple"},{"text":":","color":"light_purple"},{"score":{"name":"%uhcp_augmentS","objective":"uhcp_a_timer"},"color":"light_purple"},{"text":"]","color":"dark_red"}]

execute if score @s uhcp_a_timer matches 0.. run return 0

# Hunting Call Effect
# Assign Team Scoreboards
execute if entity @a[predicate=uhcp:teams/solo] run function uhcp:teams/solo
execute if entity @a[predicate=uhcp:teams/team] run function uhcp:teams/team
scoreboard players set @a[predicate=uhcp:teams/neither] uhcp_team 0
scoreboard players set @a[gamemode=!survival] uhcp_team 0

tag @s add UHCP_HuntingCall
effect give @s speed 20 0 false
execute as @a[distance=..100] unless score @s uhcp_team = @a[tag=UHCP_HuntingCall,sort=nearest,limit=1] uhcp_team run effect give @s glowing 10 0 true
execute as @a at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1 1
tellraw @a [{"selector":"@s","color":"blue"},{"text":" used","color":"white"},{"text":" Hunting Call","color":"gold"},{"text":"!","color":"white"}]

scoreboard players set @s uhcp_a_timer 6000
tag @s remove UHCP_HuntingCall
