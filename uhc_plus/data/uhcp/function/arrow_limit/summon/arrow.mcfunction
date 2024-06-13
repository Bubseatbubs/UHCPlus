summon minecraft:item ~ ~ ~ {Tags:["UHCP_New"],PickupDelay:40s,Item:{id:"minecraft:arrow"}}
execute as @e[tag=UHCP_New,sort=nearest,limit=1] run function uhcp:arrow_limit/summon/count
