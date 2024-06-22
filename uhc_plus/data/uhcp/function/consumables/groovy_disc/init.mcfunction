clear @s *[minecraft:custom_data~{uhcp_consumable:7b}] 1
effect give @a[distance=..50,gamemode=survival] minecraft:glowing 30 0 true 
effect give @a[distance=..50,gamemode=survival] minecraft:blindness 30 0 true 

tellraw @a[distance=..50] [{"selector":"@s","color":"#47FF4E"},{"text":" started a rave... you were inflicted with\n","color":"#00FF22","bold":false},{"text":"Blindness and Glowing!","color":"dark_red"}]
execute as @a[distance=..50,gamemode=survival] at @s run playsound minecraft:item.trident.return master @s ~ ~ ~ 1 2 1
execute as @a[distance=..50,gamemode=survival,tag=!UHCP_ListeningToPigstep] at @s run playsound minecraft:music_disc.pigstep record @s ~ ~ ~ 1000 1 1
tag @a[distance=..50] add UHCP_ListeningToPigstep

scoreboard players operation @s[scores={uhcp_augment=118}] uhcp_aug_regenItem = %time uhcp_game_time
scoreboard players add @s[scores={uhcp_augment=118}] uhcp_aug_regenItem 6000
