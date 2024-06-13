clear @s *[custom_data~{uhcp_consumable:16b}] 1
effect give @s minecraft:absorption infinite 4 true
attribute @s minecraft:generic.knockback_resistance modifier add uhcp:ferrum_scrap_metal 0.25 add_value
playsound minecraft:entity.iron_golem.repair master @s ~ ~ ~ 1 1 1
