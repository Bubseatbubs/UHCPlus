advancement revoke @s only uhcp:relics/increase_dur
playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1 2 1
scoreboard players set @s uhcp_leave 1000

execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_relic:true},!minecraft:damage=0] run function uhcp:relics/durability/offhand/increase
execute if items entity @s hotbar.* *[minecraft:custom_data~{uhcp_relic:true},!minecraft:damage=0] run function uhcp:relics/durability/hotbar

execute unless items entity @s inventory.* *[minecraft:custom_data~{uhcp_relic:true},!minecraft:damage=0] run return fail
execute if items entity @s container.9 *[minecraft:custom_data~{uhcp_relic:true},!minecraft:damage=0] run function uhcp:relics/durability/increase with entity @s Inventory[{Slot:9b}]
execute if items entity @s container.10 *[minecraft:custom_data~{uhcp_relic:true},!minecraft:damage=0] run function uhcp:relics/durability/increase with entity @s Inventory[{Slot:10b}]
execute if items entity @s container.11 *[minecraft:custom_data~{uhcp_relic:true},!minecraft:damage=0] run function uhcp:relics/durability/increase with entity @s Inventory[{Slot:11b}]
execute if items entity @s container.12 *[minecraft:custom_data~{uhcp_relic:true},!minecraft:damage=0] run function uhcp:relics/durability/increase with entity @s Inventory[{Slot:12b}]
execute if items entity @s container.13 *[minecraft:custom_data~{uhcp_relic:true},!minecraft:damage=0] run function uhcp:relics/durability/increase with entity @s Inventory[{Slot:13b}]
execute if items entity @s container.14 *[minecraft:custom_data~{uhcp_relic:true},!minecraft:damage=0] run function uhcp:relics/durability/increase with entity @s Inventory[{Slot:14b}]
execute if items entity @s container.15 *[minecraft:custom_data~{uhcp_relic:true},!minecraft:damage=0] run function uhcp:relics/durability/increase with entity @s Inventory[{Slot:15b}]
execute if items entity @s container.16 *[minecraft:custom_data~{uhcp_relic:true},!minecraft:damage=0] run function uhcp:relics/durability/increase with entity @s Inventory[{Slot:16b}]
execute if items entity @s container.17 *[minecraft:custom_data~{uhcp_relic:true},!minecraft:damage=0] run function uhcp:relics/durability/increase with entity @s Inventory[{Slot:17b}]
execute if items entity @s container.18 *[minecraft:custom_data~{uhcp_relic:true},!minecraft:damage=0] run function uhcp:relics/durability/increase with entity @s Inventory[{Slot:18b}]
execute if items entity @s container.19 *[minecraft:custom_data~{uhcp_relic:true},!minecraft:damage=0] run function uhcp:relics/durability/increase with entity @s Inventory[{Slot:19b}]
execute if items entity @s container.20 *[minecraft:custom_data~{uhcp_relic:true},!minecraft:damage=0] run function uhcp:relics/durability/increase with entity @s Inventory[{Slot:20b}]
execute if items entity @s container.21 *[minecraft:custom_data~{uhcp_relic:true},!minecraft:damage=0] run function uhcp:relics/durability/increase with entity @s Inventory[{Slot:21b}]
execute if items entity @s container.22 *[minecraft:custom_data~{uhcp_relic:true},!minecraft:damage=0] run function uhcp:relics/durability/increase with entity @s Inventory[{Slot:22b}]
execute if items entity @s container.23 *[minecraft:custom_data~{uhcp_relic:true},!minecraft:damage=0] run function uhcp:relics/durability/increase with entity @s Inventory[{Slot:23b}]
execute if items entity @s container.24 *[minecraft:custom_data~{uhcp_relic:true},!minecraft:damage=0] run function uhcp:relics/durability/increase with entity @s Inventory[{Slot:24b}]
execute if items entity @s container.25 *[minecraft:custom_data~{uhcp_relic:true},!minecraft:damage=0] run function uhcp:relics/durability/increase with entity @s Inventory[{Slot:25b}]
execute if items entity @s container.26 *[minecraft:custom_data~{uhcp_relic:true},!minecraft:damage=0] run function uhcp:relics/durability/increase with entity @s Inventory[{Slot:26b}]
execute if items entity @s container.27 *[minecraft:custom_data~{uhcp_relic:true},!minecraft:damage=0] run function uhcp:relics/durability/increase with entity @s Inventory[{Slot:27b}]
execute if items entity @s container.28 *[minecraft:custom_data~{uhcp_relic:true},!minecraft:damage=0] run function uhcp:relics/durability/increase with entity @s Inventory[{Slot:28b}]
execute if items entity @s container.29 *[minecraft:custom_data~{uhcp_relic:true},!minecraft:damage=0] run function uhcp:relics/durability/increase with entity @s Inventory[{Slot:29b}]
execute if items entity @s container.30 *[minecraft:custom_data~{uhcp_relic:true},!minecraft:damage=0] run function uhcp:relics/durability/increase with entity @s Inventory[{Slot:30b}]
execute if items entity @s container.31 *[minecraft:custom_data~{uhcp_relic:true},!minecraft:damage=0] run function uhcp:relics/durability/increase with entity @s Inventory[{Slot:31b}]
execute if items entity @s container.32 *[minecraft:custom_data~{uhcp_relic:true},!minecraft:damage=0] run function uhcp:relics/durability/increase with entity @s Inventory[{Slot:32b}]
execute if items entity @s container.33 *[minecraft:custom_data~{uhcp_relic:true},!minecraft:damage=0] run function uhcp:relics/durability/increase with entity @s Inventory[{Slot:33b}]
execute if items entity @s container.34 *[minecraft:custom_data~{uhcp_relic:true},!minecraft:damage=0] run function uhcp:relics/durability/increase with entity @s Inventory[{Slot:34b}]
execute if items entity @s container.35 *[minecraft:custom_data~{uhcp_relic:true},!minecraft:damage=0] run function uhcp:relics/durability/increase with entity @s Inventory[{Slot:35b}]
scoreboard players reset @s uhcp_leave
