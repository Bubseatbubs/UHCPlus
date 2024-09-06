# Locate slot missing augment selection item
execute if items entity @s container.3 *[minecraft:custom_data~{uhcp_augPane:1b}] run return run item replace entity @s container.3 from entity @s container.2
execute if items entity @s container.4 *[minecraft:custom_data~{uhcp_augPane:1b}] run return run item replace entity @s container.4 from entity @s container.2
execute if items entity @s container.5 *[minecraft:custom_data~{uhcp_augPane:1b}] run return run item replace entity @s container.5 from entity @s container.2
item replace entity @s container.7 from entity @s container.2
