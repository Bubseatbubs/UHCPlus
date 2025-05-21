playsound minecraft:block.glass.break master @a[distance=..9] ~ ~ ~ 1 0.8 0.75
playsound minecraft:block.glass.break master @a[distance=..9] ~ ~ ~ 1 0.8 0.75
playsound minecraft:block.glass.break master @a[distance=..12] ~ ~ ~ 1 0.8 0.75
playsound minecraft:block.glass.break master @a[distance=..12] ~ ~ ~ 1 0.8 0.75
playsound minecraft:block.glass.break master @a[distance=..15] ~ ~ ~ 1 0.8 0.75
particle minecraft:reverse_portal ~ ~ ~ 1 2 1 0.1 100 normal
particle minecraft:block{block_state:"minecraft:nether_portal"} ~ ~ ~ 2 2 2 0.1 300 normal
execute as @a[distance=..6,gamemode=survival] run damage @s 7 minecraft:falling_block
scoreboard players set %containers uhcp_settings 0
fill ~-6 ~-2 ~-8 ~6 ~ ~8 minecraft:polished_blackstone_bricks replace #uhcp:containers destroy
fill ~-8 ~-2 ~-6 ~8 ~ ~6 minecraft:polished_blackstone_bricks replace #uhcp:containers destroy
fill ~-6 ~-2 ~-8 ~6 ~ ~8 minecraft:polished_blackstone_bricks replace #uhcp:no_fluids_breakable
fill ~-8 ~-2 ~-6 ~8 ~ ~6 minecraft:polished_blackstone_bricks replace #uhcp:no_fluids_breakable
scoreboard players set %containers uhcp_settings 1
summon minecraft:hoglin ~-2 ~ ~-2 {PersistenceRequired:1b,CanPickUpLoot:0b,Health:4f,IsImmuneToZombification:1b,Tags:["UHCP_Minion"]}
summon minecraft:hoglin ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:0b,Health:4f,IsImmuneToZombification:1b,Tags:["UHCP_Minion"]}
summon minecraft:hoglin ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:0b,Health:4f,IsImmuneToZombification:1b,Tags:["UHCP_Minion"]}
summon minecraft:hoglin ~1.5 ~ ~0.65 {PersistenceRequired:1b,CanPickUpLoot:0b,Health:4f,IsImmuneToZombification:1b,Tags:["UHCP_Minion"]}
summon minecraft:hoglin ~1.25 ~ ~-0.4 {PersistenceRequired:1b,CanPickUpLoot:0b,Health:4f,IsImmuneToZombification:1b,Tags:["UHCP_Minion"]}
summon minecraft:hoglin ~-0.65 ~ ~0.75 {PersistenceRequired:1b,CanPickUpLoot:0b,Health:4f,IsImmuneToZombification:1b,Tags:["UHCP_Minion"]}
execute on passengers run kill @s
kill @s
