playsound minecraft:block.beehive.enter master @a[distance=..9] ~ ~ ~ 1 1 0.5
particle minecraft:falling_honey ~ ~2 ~ 0.25 0.5 0.25 0.1 15 normal
execute anchored eyes run summon minecraft:bee ~ ~2 ~ {CanPickUpLoot:0b,CustomName:{"text":"Royal Guard","color":"yellow","bold":true},CustomNameVisible:true,AngerTime:1000,Health:16f,HasNectar:0b,HasStung:0b,Tags:["UHCP_Summon","UHCP_Bee","UHCP_BeeKnight","UHCP_New"],attributes:[{id:"minecraft:attack_damage",base:8.0d},{id:"minecraft:max_health",base:16.0d},{id:"minecraft:scale",base:3.0d}]}
