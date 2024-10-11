tellraw @s[tag=!UHCP_RelicTestingChamber] [{"text":"[","color":"white"},{"text":"Reli","color":"#2C50F2"},{"text":"c Tes","color":"#3D8BFF"},{"text":"ting ","color":"#59B7FF"},{"text":"Cham","color":"#85EFFF"},{"text":"ber","color":"#B8FFF1"},{"text":"]\n","color":"white"},{"text":"Welcome to the Relic Testing Chamber! In this area, you can\ntest all the Relics found within the game. Use the Arrows to\ncycle between Relics.\n\nNote: Relics have no Cooldown in the Relic Testing Chamber.","color":"gray"}]
tag @s add UHCP_RelicTestingChamber
scoreboard players set @s uhcp_lobby_item 10
playsound minecraft:block.vault.insert_item master @s ~ ~ ~ 1 1 1
playsound minecraft:block.vault.activate master @s ~ ~ ~ 1 1 1

tag @s add UHCP_DisableReset
item replace entity @s armor.head with minecraft:air
function uhcp:lobby/menu/relic_testing
tag @s remove UHCP_DisableReset
