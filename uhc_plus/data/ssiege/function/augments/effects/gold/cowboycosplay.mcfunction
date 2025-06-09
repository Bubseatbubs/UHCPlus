execute positioned ~1 ~ ~1 run summon cow
execute positioned ~-1 ~ ~1 run summon cow
execute positioned ~1 ~ ~-1 run summon cow
execute positioned ~-1 ~ ~-1 run summon cow
execute positioned ~ ~2 ~ run summon horse
give @s minecraft:lead[minecraft:item_name={"text":"Lasso","color":"yellow"},minecraft:lore=[{"text":"Whip 'em up!","color":"white"}]] 1
item replace entity @s armor.head with minecraft:leather_helmet[minecraft:item_name={"text":"Cowboy Hat","color":"yellow"},minecraft:lore=[{"text":"Yeehaw!","color":"white"}],minecraft:dyed_color=12884551,minecraft:trim={material:"minecraft:iron",pattern:"minecraft:dune"},minecraft:tooltip_display={hidden_components:["minecraft:dyed_color","minecraft:trim"]}] 1
give @s saddle
give @s diamond_horse_armor
give @s gold_ingot 40