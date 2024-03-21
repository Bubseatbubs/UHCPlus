execute store result score %current_damage uhcp_a_durability run data get entity @s Inventory[{Slot:102b}].components."minecraft:damage"
execute if score %current_damage uhcp_a_durability matches 90..110 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 1
scoreboard players reset %damage uhcp_a_durability
scoreboard players set %damage uhcp_a_durability 10000000
execute store result score %max_damage uhcp_a_durability run data get entity @s Inventory[{Slot:102b}].components."minecraft:max_damage"
scoreboard players operation %damage uhcp_a_durability /= %max_damage uhcp_a_durability
item modify entity @s armor.chest uhcp:update_dur