clear @s *[custom_data~{uhcp_consumable:7b}] 1
effect give @a[distance=..50,gamemode=survival] glowing 30 0 true 
effect give @a[distance=..50,gamemode=survival] blindness 30 0 true 

tellraw @a[distance=..50] [{"selector":"@s","color":"#47FF4E"},{"text":" started a rave... you were inflicted with\n","color":"#00FF22","bold":false},{"text":"Blindness and Glowing!","color":"dark_red"}]
execute as @a[distance=..50,gamemode=survival] at @s run playsound minecraft:item.trident.return master @s ~ ~ ~ 1 2 1
execute as @a[distance=..50,gamemode=survival,tag=!UHCP_ListeningToPigstep] at @s run playsound minecraft:music_disc.pigstep record @s ~ ~ ~ 1000 1 1
tag @a[distance=..50] add UHCP_ListeningToPigstep

execute if score @s uhcp_augment matches 118 run scoreboard players operation @s uhcp_aug_regenItem = %time uhcp_game_time
execute if score @s uhcp_augment matches 118 run scoreboard players add @s uhcp_aug_regenItem 6000