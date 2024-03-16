execute as @s unless score @s uhcp_team = @e[tag=UHCP_CurrentLaser,sort=nearest,limit=1] uhcp_team run damage @s 4 fireworks by @e[tag=UHCP_CurrentLaser,sort=nearest,limit=1]
playsound item.trident.thunder master @a[distance=..6] 1 1 0.6
kill @e[tag=UHCP_CurrentLaser,sort=nearest,limit=1]