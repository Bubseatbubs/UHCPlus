#spawns 2 baby sniffer egg with the tag "babysitting"
give @s minecraft:sniffer_spawn_egg[minecraft:entity_data={id:"minecraft:marker",Tags:["UHCP_Summon","UHCP_SpawnEgg","UHCP_SpawnSnifflet"]},minecraft:custom_name={"color":"gold","text":"Baby Sniffer","italic":false}] 2

#testing stuff
#execute as @e[type=sniffer,tag=babysitting] run data merge entity @s {Brain: {memories: {"minecraft:sniff_cooldown": {value:{}, ttl: 9999L}}}}

scoreboard objectives add sniff_cooldown dummy
