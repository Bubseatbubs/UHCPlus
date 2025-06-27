item replace entity @s armor.head with minecraft:warped_fungus[minecraft:item_name={"text":"The Parasite","color":"light_purple"},minecraft:lore=[{"text":"You have become its new vessel.","color":"gray"}],minecraft:enchantments={"minecraft:binding_curse":1,"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hidden_components:["minecraft:enchantments"]}] 1
effect give @s minecraft:strength infinite 0 false
effect give @s minecraft:hunger infinite 0 false
playsound minecraft:block.beehive.exit master @s ~ ~ ~ 1 1 1
