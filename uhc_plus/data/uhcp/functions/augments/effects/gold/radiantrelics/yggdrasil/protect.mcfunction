advancement revoke @s only uhcp:augments/hurt_while_wearing_yggdrasil
effect give @s absorption 8 2 false
effect give @s resistance 8 0 false
execute at @s run playsound block.shroomlight.place master @a[distance=..4] ~ ~ ~ 1 1 1
execute at @s run playsound block.shroomlight.place master @a[distance=..4] ~ ~ ~ 1 1 1
execute at @s run playsound block.shroomlight.place master @a[distance=..4] ~ ~ ~ 1 1 1
execute at @s run playsound block.shroomlight.place master @a[distance=..4] ~ ~ ~ 1 1 1
execute at @s run particle composter ~ ~ ~ 1 1 1 0.1 100 normal

execute store result storage uhcp:cd cDamage int 1 run scoreboard players set %damage uhcp_a_durability 50
item modify entity @s armor.chest uhcp:update_dur

