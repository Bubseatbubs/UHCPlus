playsound block.beehive.enter master @a[distance=..9] ~ ~ ~ 1 1 0.5
particle falling_honey ~ ~2 ~ 0.25 0.5 0.25 0.1 15 normal
summon bee ~ ~ ~ {AngerTime:1000,Health:1f,HasNectar:0b,HasStung:0b,Tags:["UHCP_Summon","UHCP_Bee"],Attributes:[{Name:"generic.attack_damage",Base:4}]}