playsound entity.wolf.growl master @a[distance=..9] ~ ~ ~ 1 1 0.5
particle angry_villager ~ ~2 ~ 0.25 0.5 0.25 0.1 7 normal
summon wolf ~ ~ ~ {AngerTime:1000,Health:5f,Tags:["UHCP_New","UHCP_Summon","UHCP_BeastWolf"],Attributes:[{Name:"generic.attack_damage",Base:6}]}
