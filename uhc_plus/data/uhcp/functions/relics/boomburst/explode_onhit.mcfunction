effect clear @s bad_omen
execute at @e[tag=UHCP_BoomburstDisplay,sort=nearest,limit=1] run summon tnt ~ ~-0.5 ~ {fuse:20}
playsound entity.tnt.primed master @a[distance=..16] ~ ~ ~ 1 1 0.5
kill @e[tag=UHCP_BoomburstDisplay,sort=nearest,limit=1]
kill @e[tag=UHCP_BoomburstInit,sort=nearest,limit=1]