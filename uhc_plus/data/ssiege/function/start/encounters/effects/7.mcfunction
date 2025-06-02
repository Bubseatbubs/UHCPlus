execute store result score %humbug uhcp_initStatus run random roll 0..9
execute if score %humbug uhcp_initStatus matches 0 run tellraw @a ["",{"text":"Encounter: ","bold":true,"color":"green"},{"text":"humbug gave everyone "},{"text":"2 stacks of gold","bold":true,"color":"yellow"},{"text":"!"}]
execute if score %humbug uhcp_initStatus matches 0 run return run give @a gold_ingot 128

execute if score %humbug uhcp_initStatus matches 1 run tellraw @a ["",{"text":"Encounter: ","bold":true,"color":"green"},{"text":"humbug gave everyone "},{"text":"10 Soul Shards","bold":true,"color":"light_purple"},{"text":"!"}]
execute if score %humbug uhcp_initStatus matches 1 run return run execute as @a run scoreboard players set @s ssiege_drop_shards 10
execute if score %humbug uhcp_initStatus matches 1 run return run loot give @a loot ssiege:multi_soulshard

execute if score %humbug uhcp_initStatus matches 2 run tellraw @a ["",{"text":"Encounter: ","bold":true,"color":"green"},{"text":"humbug gave everyone "},{"text":"48 Diamonds","bold":true,"color":"aqua"},{"text":"!"}]
execute if score %humbug uhcp_initStatus matches 2 run return run give @a diamond 48

execute if score %humbug uhcp_initStatus matches 3 run tellraw @a ["",{"text":"Encounter: ","bold":true,"color":"green"},{"text":"humbug gave everyone a "},{"text":"Relic Invoker","bold":true,"color":"dark_purple"},{"text":"!"}]
execute if score %humbug uhcp_initStatus matches 3 run return run loot give @a loot uhcp:consumables/relic_invoker

execute if score %humbug uhcp_initStatus matches 4 run tellraw @a ["",{"text":"Encounter: ","bold":true,"color":"green"},{"text":"humbug gave everyone "},{"text":"12 Wind Charges","bold":true,"color":"white"},{"text":"!"}]
execute if score %humbug uhcp_initStatus matches 4 run return run give @a wind_charge 12

execute if score %humbug uhcp_initStatus matches 5 run tellraw @a ["",{"text":"Encounter: ","bold":true,"color":"green"},{"text":"humbug gave everyone "},{"text":"5 Ender Pearls","bold":true,"color":"dark_purple"},{"text":"!"}]
execute if score %humbug uhcp_initStatus matches 5 run return run give @a ender_pearl 5

execute if score %humbug uhcp_initStatus matches 6 run tellraw @a ["",{"text":"Encounter: ","bold":true,"color":"green"},{"text":"humbug gave everyone an "},{"text":"Enchanted Golden Apple","bold":true,"color":"yellow"},{"text":"!"}]
execute if score %humbug uhcp_initStatus matches 6 run return run give @a enchanted_golden_apple

execute if score %humbug uhcp_initStatus matches 7 run tellraw @a ["",{"text":"Encounter: ","bold":true,"color":"green"},{"text":"humbug gave everyone "},{"text":"64 Apples","bold":true,"color":"red"},{"text":"!"}]
execute if score %humbug uhcp_initStatus matches 7 run return run give @a apple 64

execute if score %humbug uhcp_initStatus matches 8 run tellraw @a ["",{"text":"Encounter: ","bold":true,"color":"green"},{"text":"humbug gave everyone "},{"text":"2 Web Slingers","bold":true,"color":"white"},{"text":"!"}]
execute if score %humbug uhcp_initStatus matches 8 run loot give @a loot uhcp:consumables/web_slinger
execute if score %humbug uhcp_initStatus matches 8 run return run loot give @a loot uhcp:consumables/web_slinger

execute if score %humbug uhcp_initStatus matches 9 run tellraw @a ["",{"text":"Encounter: ","bold":true,"color":"green"},{"text":"humbug gave everyone "},{"text":"2 stacks of gold","bold":true,"color":"yellow"},{"text":"!"}]
execute if score %humbug uhcp_initStatus matches 9 run return run give @a gold_ingot 128