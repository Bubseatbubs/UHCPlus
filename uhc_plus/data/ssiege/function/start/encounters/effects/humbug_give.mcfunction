scoreboard players add %encounter_time uhcp_game_time 12000
execute store result score %humbug uhcp_initStatus run random value 0..9
execute if score %humbug uhcp_initStatus matches 0 run tellraw @a ["",{"text":"Encounter: ","bold":true,"color":"green"},{"text":"humbug gave everyone "},{"text":"16 gold","bold":true,"color":"yellow"},{"text":"!"}]
execute if score %humbug uhcp_initStatus matches 0 run return run give @a gold_ingot 16

execute if score %humbug uhcp_initStatus matches 1 run tellraw @a ["",{"text":"Encounter: ","bold":true,"color":"green"},{"text":"humbug gave everyone "},{"text":"2 Soul Shards","bold":true,"color":"light_purple"},{"text":"!"}]
execute if score %humbug uhcp_initStatus matches 1 run return run execute as @a run scoreboard players set @s ssiege_multi 2
execute if score %humbug uhcp_initStatus matches 1 run return run loot give @a loot ssiege:multi_soulshard

execute if score %humbug uhcp_initStatus matches 2 run tellraw @a ["",{"text":"Encounter: ","bold":true,"color":"green"},{"text":"humbug gave everyone "},{"text":"8 Diamonds","bold":true,"color":"aqua"},{"text":"!"}]
execute if score %humbug uhcp_initStatus matches 2 run return run give @a diamond 8

execute if score %humbug uhcp_initStatus matches 3 run tellraw @a ["",{"text":"Encounter: ","bold":true,"color":"green"},{"text":"humbug gave everyone a "},{"text":"Trident","bold":true,"color":"aqua"},{"text":"!"}]
execute if score %humbug uhcp_initStatus matches 3 run return run give @a trident[damage=230,repair_cost=2147483647] 1

execute if score %humbug uhcp_initStatus matches 4 run tellraw @a ["",{"text":"Encounter: ","bold":true,"color":"green"},{"text":"humbug gave everyone "},{"text":"2 Wind Charges","bold":true,"color":"white"},{"text":"!"}]
execute if score %humbug uhcp_initStatus matches 4 run return run give @a wind_charge 2

execute if score %humbug uhcp_initStatus matches 5 run tellraw @a ["",{"text":"Encounter: ","bold":true,"color":"green"},{"text":"humbug gave everyone an"},{"text":" Ender Pearls","bold":true,"color":"dark_purple"},{"text":"!"}]
execute if score %humbug uhcp_initStatus matches 5 run return run give @a ender_pearl 1

execute if score %humbug uhcp_initStatus matches 6 run tellraw @a ["",{"text":"Encounter: ","bold":true,"color":"green"},{"text":"humbug gave everyone an "},{"text":"Totem of Undying","bold":true,"color":"yellow"},{"text":"!"}]
execute if score %humbug uhcp_initStatus matches 6 run return run give @a totem_of_undying

execute if score %humbug uhcp_initStatus matches 7 run tellraw @a ["",{"text":"Encounter: ","bold":true,"color":"green"},{"text":"humbug gave everyone "},{"text":"8 TNT","bold":true,"color":"red"},{"text":"!"}]
execute if score %humbug uhcp_initStatus matches 7 run return run give @a tnt 8

execute if score %humbug uhcp_initStatus matches 8 run tellraw @a ["",{"text":"Encounter: ","bold":true,"color":"green"},{"text":"humbug gave everyone "},{"text":"2 Web Slingers","bold":true,"color":"white"},{"text":"!"}]
execute if score %humbug uhcp_initStatus matches 8 run loot give @a loot uhcp:consumables/web_slinger
execute if score %humbug uhcp_initStatus matches 8 run return run loot give @a loot uhcp:consumables/web_slinger

execute if score %humbug uhcp_initStatus matches 9 run tellraw @a ["",{"text":"Encounter: ","bold":true,"color":"green"},{"text":"humbug gave everyone "},{"text":"bucket of... HUH","bold":true,"color":"white"},{"text":"?"}]
execute if score %humbug uhcp_initStatus matches 9 run return run give @a milk_bucket[custom_name={"color":"white","text":"humbucket"}] 1