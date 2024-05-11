playsound minecraft:block.glass.break master @a[distance=..6] ~ ~ ~ 1 0.8 0.75
playsound minecraft:block.glass.break master @a[distance=..9] ~ ~ ~ 1 0.8 0.75
playsound minecraft:block.glass.break master @a[distance=..12] ~ ~ ~ 1 0.8 0.75
particle minecraft:reverse_portal ~ ~ ~ 1 2 1 0.1 100 normal
particle minecraft:block{block_state:"minecraft:nether_portal"} ~ ~ ~ 2 2 2 0.1 300 normal
execute as @a[distance=..3,gamemode=survival] run damage @s 6 minecraft:falling_block
fill ~-3 ~-2 ~-4 ~3 ~ ~4 minecraft:netherrack replace #uhcp:breakable
fill ~-4 ~-2 ~-3 ~4 ~ ~3 minecraft:netherrack replace #uhcp:breakable
execute store result score %random uhcp_titans_count run random value 0..4
execute if score %random uhcp_titans_count matches 0 run summon minecraft:piglin ~ ~ ~ {Health:4f,IsImmuneToZombification:1b,CannotHunt:1b,Tags:["UHCP_Minion"],HandItems:[{id:"minecraft:crossbow",count:1},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{},{id:"minecraft:golden_helmet",count:1,components:{"minecraft:trim":{material:"minecraft:copper",pattern:"minecraft:snout"}}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],Attributes:[{Name:generic.max_health,Base:6}]}
execute if score %random uhcp_titans_count matches 0 run summon minecraft:piglin ~ ~ ~ {Health:4f,IsImmuneToZombification:1b,CannotHunt:1b,Tags:["UHCP_Minion"],HandItems:[{id:"minecraft:crossbow",count:1},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{},{id:"minecraft:golden_helmet",count:1,components:{"minecraft:trim":{material:"minecraft:copper",pattern:"minecraft:snout"}}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],Attributes:[{Name:generic.max_health,Base:6}]}
execute if score %random uhcp_titans_count matches 1 run summon minecraft:magma_cube ~ ~ ~ {Health:3f,Size:2,Tags:["UHCP_Minion"],Attributes:[{Name:generic.attack_damage,Base:4},{Name:generic.scale,Base:3}]}
execute if score %random uhcp_titans_count matches 2 run summon minecraft:wither_skeleton ~ ~ ~ {Health:3f,Tags:["UHCP_Minion"],HandItems:[{id:"minecraft:stone_sword",count:1},{}],HandDropChances:[0.000F,0.085F]} 
execute if score %random uhcp_titans_count matches 3 run summon minecraft:piglin_brute ~ ~ ~ {Health:6f,IsImmuneToZombification:1b,CannotHunt:1b,Tags:["UHCP_Minion"],HandItems:[{id:"minecraft:golden_axe",count:1},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{},{id:"minecraft:netherite_helmet",count:1,components:{"minecraft:trim":{material:"minecraft:copper",pattern:"minecraft:snout"}}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],Attributes:[{Name:generic.max_health,Base:6},{Name:generic.attack_damage,Base:4}]}
execute if score %random uhcp_titans_count matches 4 run summon minecraft:strider ~ ~ ~ {Health:1f,Tags:["UHCP_Minion"]} 

execute on passengers run kill @s
kill @s