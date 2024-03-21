advancement revoke @s only uhcp:relics/yggdrasil/ability
effect give @s absorption 3 1 false
execute at @s run playsound block.shroomlight.place master @a[distance=..4] ~ ~ ~ 1 1 1
execute at @s run playsound block.shroomlight.place master @a[distance=..4] ~ ~ ~ 1 1 1
execute at @s run playsound block.shroomlight.place master @a[distance=..4] ~ ~ ~ 1 1 1
execute at @s run playsound block.shroomlight.place master @a[distance=..4] ~ ~ ~ 1 1 1
execute at @s run particle composter ~ ~ ~ 1 1 1 0.1 100 normal

scoreboard players set %damage uhcp_a_durability -1000000
item modify entity @s armor.chest uhcp:update_dur
function uhcp:relics/durability/armor/chestplate

