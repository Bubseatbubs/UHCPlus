execute store result score @s uhcp_initStatus run random value 0..11
execute at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 1 1

execute if score @s uhcp_initStatus matches 0 run loot give @s loot uhcp:consumables/relic_invoker
execute if score @s uhcp_initStatus matches 0 run return run tellraw @s ["",{"text":"[Buried Treasures]","bold":true,"color":"aqua"},{"text":" You found a "},{"text":"Relic Invoker","color":"yellow"},{"text":" in the ore!"}]

execute if score @s uhcp_initStatus matches 1 run give @s totem_of_undying
execute if score @s uhcp_initStatus matches 1 run return run tellraw @s ["",{"text":"[Buried Treasures]","bold":true,"color":"aqua"},{"text":" You found a "},{"text":"Totem of Undying","color":"yellow"},{"text":" in the ore!"}]

execute if score @s uhcp_initStatus matches 2 run give @s netherite_upgrade_smithing_template
execute if score @s uhcp_initStatus matches 2 run return run tellraw @s ["",{"text":"[Buried Treasures]","bold":true,"color":"aqua"},{"text":" You found a "},{"text":"Netherite Upgrade Smithing Template","color":"yellow"},{"text":" in the ore!"}]

execute if score @s uhcp_initStatus matches 3 run give @s netherite_ingot
execute if score @s uhcp_initStatus matches 3 run return run tellraw @s ["",{"text":"[Buried Treasures]","bold":true,"color":"aqua"},{"text":" You found a "},{"text":"Netherite Ingot","color":"yellow"},{"text":" in the ore!"}]

execute if score @s uhcp_initStatus matches 4 run give @s ender_pearl
execute if score @s uhcp_initStatus matches 4 run return run tellraw @s ["",{"text":"[Buried Treasures]","bold":true,"color":"aqua"},{"text":" You found a "},{"text":"Ender Pearl","color":"yellow"},{"text":" in the ore!"}]

execute if score @s uhcp_initStatus matches 5 run scoreboard players set @s ssiege_multi 4
execute if score @s uhcp_initStatus matches 5 run loot give @s loot ssiege:multi_soulshard
execute if score @s uhcp_initStatus matches 5 run return run tellraw @s ["",{"text":"[Buried Treasures]","bold":true,"color":"aqua"},{"text":" You found 4 "},{"text":"Soul Shards","color":"yellow"},{"text":" in the ore!"}]

execute if score @s uhcp_initStatus matches 6 run loot give @s loot ssiege:consumables/bridge_ball
execute if score @s uhcp_initStatus matches 6 run loot give @s loot ssiege:consumables/bridge_ball
execute if score @s uhcp_initStatus matches 6 run return run tellraw @s ["",{"text":"[Buried Treasures]","bold":true,"color":"aqua"},{"text":" You found 2 "},{"text":"Bridge Balls","color":"yellow"},{"text":" in the ore!"}]

execute if score @s uhcp_initStatus matches 7 run loot give @s loot uhcp:consumables/royal_jelly
execute if score @s uhcp_initStatus matches 7 run return run tellraw @s ["",{"text":"[Buried Treasures]","bold":true,"color":"aqua"},{"text":" You found a "},{"text":"Royal Jelly","color":"yellow"},{"text":" in the ore!"}]

execute if score @s uhcp_initStatus matches 8 run loot give @s loot uhcp:player_compass
execute if score @s uhcp_initStatus matches 8 run return run tellraw @s ["",{"text":"[Buried Treasures]","bold":true,"color":"aqua"},{"text":" You found a "},{"text":"Player Tracking Compass","color":"yellow"},{"text":" in the ore!"}]

execute if score @s uhcp_initStatus matches 9 run loot give @s loot ssiege:consumables/wild_feather
execute if score @s uhcp_initStatus matches 9 run loot give @s loot ssiege:consumables/wild_feather
execute if score @s uhcp_initStatus matches 9 run return run tellraw @s ["",{"text":"[Buried Treasures]","bold":true,"color":"aqua"},{"text":" You found 2 "},{"text":"Wild Feathers","color":"yellow"},{"text":" in the ore!"}]

execute if score @s uhcp_initStatus matches 10 run give @s golden_apple 4
execute if score @s uhcp_initStatus matches 10 run return run tellraw @s ["",{"text":"[Buried Treasures]","bold":true,"color":"aqua"},{"text":" You found 4 "},{"text":"Golden Apples","color":"yellow"},{"text":" in the ore!"}]

execute if score @s uhcp_initStatus matches 11 run loot give @s loot uhcp:consumables/web_slinger
execute if score @s uhcp_initStatus matches 11 run loot give @s loot uhcp:consumables/web_slinger
execute if score @s uhcp_initStatus matches 11 run return run tellraw @s ["",{"text":"[Buried Treasures]","bold":true,"color":"aqua"},{"text":" You found 2 "},{"text":"Web Slingers","color":"yellow"},{"text":" in the ore!"}]