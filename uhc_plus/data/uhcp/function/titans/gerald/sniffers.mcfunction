summon minecraft:sniffer ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:0b,Tags:["UHCP_Minion"]}
summon minecraft:sniffer ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:0b,Tags:["UHCP_Minion"]}
summon minecraft:sniffer ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:0b,Tags:["UHCP_Minion"]}
execute as @a[gamemode=survival,distance=..16] at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 1 1
execute as @a[gamemode=survival,distance=..16] at @s run playsound minecraft:entity.sniffer.happy master @s ~ ~ ~ 1 1 1
execute as @a[gamemode=survival,distance=..16] at @s run playsound minecraft:entity.sniffer.happy master @s ~ ~ ~ 1 1 1
tellraw @a[gamemode=survival,distance=..16] {"text":"Gerald summoned a pack of Sniffers!","color":"gold","bold":true}
