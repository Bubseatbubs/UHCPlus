tag @s add UHCP_CurrentHitbox
execute on attacker run tag @s add UHCP_Attacker
playsound minecraft:entity.armor_stand.hit master @a[distance=..6] ~ ~ ~ 1 1 0.5
playsound minecraft:entity.player.hurt_sweet_berry_bush master @a[distance=..6] ~ ~ ~ 1 0.75 0.5
execute as @e[tag=UHCP_SClone] if score @s uhcp_game_id = @n[tag=UHCP_CurrentHitbox] uhcp_game_id run damage @s 0.1 minecraft:generic by @n[tag=UHCP_Attacker]
tag @e remove UHCP_Attacker
