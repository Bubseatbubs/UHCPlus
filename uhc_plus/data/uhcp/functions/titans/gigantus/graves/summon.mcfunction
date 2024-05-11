summon minecraft:zombie ~ ~1 ~ {Health:0.5f,Tags:["UHCP_Minion"],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:vanishing_curse":1}}}}],Attributes:[{Name:"generic.attack_damage",Base:4},{Name:"generic.max_health",Base:0.5}]}
particle minecraft:soul ~0.5 ~0.5 ~0.5 0.6 0.6 0.6 0.1 40 normal
playsound minecraft:block.beehive.exit master @a[distance=..4] ~ ~ ~ 1 1 0.75
playsound minecraft:entity.zombie.ambient master @a[distance=..9] ~ ~ ~ 1 1 0.75