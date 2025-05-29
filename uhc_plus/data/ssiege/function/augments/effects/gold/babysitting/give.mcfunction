#spawns 2 baby sniffer egg with the tag "babysitting"
give @p sniffer_spawn_egg[entity_data={id:"minecraft:sniffer",Tags:["babysitting"],attributes:[{id:"minecraft:scale",base:.5}]},custom_name={"color":"gold","text":"Baby Sniffer"}] 2

#testing stuff
#execute as @e[type=sniffer,tag=babysitting] run data merge entity @s {Brain: {memories: {"minecraft:sniff_cooldown": {value:{}, ttl: 9999L}}}}

scoreboard objectives add sniff_cooldown dummy
