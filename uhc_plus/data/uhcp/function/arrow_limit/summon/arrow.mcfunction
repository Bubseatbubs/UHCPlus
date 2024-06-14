summon minecraft:item ~ ~ ~ {Tags:["UHCP_New"],PickupDelay:40s,Item:{id:"minecraft:arrow"}}
execute as @n[tag=UHCP_New] run function uhcp:arrow_limit/summon/count
