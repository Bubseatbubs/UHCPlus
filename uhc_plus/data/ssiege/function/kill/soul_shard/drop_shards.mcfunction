loot spawn ~ ~1 ~ loot ssiege:soulshard
scoreboard players remove @s ssiege_shards 1
execute if score @s ssiege_shards matches 1.. run function ssiege:kill/soul_shard/drop_shards

# TODO: Adapt for Sniffer Siege
#execute as @s[type=minecraft:player] run return run function ssiege:kill/soul_shard/player
#execute as @n[tag=UHCP_New] run function uhcp:kill/soul_apple/item/init