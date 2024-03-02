item replace entity @s armor.head with minecraft:warped_fungus[minecraft:custom_name='{"text":"The Parasite","italic":false}',minecraft:lore=['{"text":"You have become its new vessel.","color":"gray"}'],minecraft:enchantments={levels:{"minecraft:binding_curse":1,"minecraft:vanishing_curse":1},show_in_tooltip:0b}] 1
effect give @s minecraft:strength infinite 0 false
effect give @s minecraft:hunger infinite 0 false
playsound minecraft:block.beehive.exit master @s ~ ~ ~ 1 1 1
