scoreboard players operation @s ssiege_drop_shards = @s ssiege_shards

loot spawn ~ ~1 ~ loot ssiege:multi_soulshard

# TODO: Adapt for Sniffer Siege
#execute as @s[type=minecraft:player] run return run function ssiege:kill/soul_shard/player
#execute as @n[tag=UHCP_New] run function uhcp:kill/soul_apple/item/init