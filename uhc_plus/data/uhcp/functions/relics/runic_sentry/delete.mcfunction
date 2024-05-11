tag @s add UHCP_CurrentDeletedTurret
execute on passengers run kill @s
playsound minecraft:item.mace.smash_ground master @a[distance=..6] ~ ~ ~ 1 1.5 0.75
particle minecraft:block{block_state:"minecraft:quartz_block"} ~ ~ ~ 1 1 1 0.1 100 normal
execute as @e[tag=UHCP_TurretHitbox] if score @s uhcp_id = @e[tag=UHCP_CurrentDeletedTurret,sort=nearest,limit=1] uhcp_id run function uhcp:entity/instant_kill
kill @s