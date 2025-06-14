execute unless score @s uhcp_team = @n[tag=UHCP_CurrentLaser] uhcp_team run damage @s 12 minecraft:fireworks by @n[tag=UHCP_CurrentLaser]
playsound minecraft:item.trident.thunder master @a[distance=..6] 1 1 0.6
kill @n[tag=UHCP_CurrentLaser]
