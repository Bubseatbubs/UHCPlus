tag @s add UHCP_CurrentHitbox
execute on attacker run tag @s add UHCP_Attacker
playsound entity.armor_stand.hit master @a[distance=..6] ~ ~ ~ 1 1 0.5
playsound entity.player.hurt_sweet_berry_bush master @a[distance=..6] ~ ~ ~ 1 0.75 0.5
execute as @e[tag=UHCP_SClone] if score @s uhcp_id = @e[tag=UHCP_CurrentHitbox,sort=nearest,limit=1] uhcp_id run damage @s 0.1 generic by @e[tag=UHCP_Attacker,sort=nearest,limit=1]
tag @e remove UHCP_Attacker