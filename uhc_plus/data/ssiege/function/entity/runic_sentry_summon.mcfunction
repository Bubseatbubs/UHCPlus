tag @s add UHCP_Owner
scoreboard players set @s uhcp_team -1
function uhcp:relics/runic_sentry/init
tag @n[tag=UHCP_Turret] add UHCP_WellEngineered
tag @n[tag=UHCP_Turret] add UHCP_HostileTurret
effect give @n[tag=UHCP_TurretHitbox] minecraft:resistance infinite 2 true
tag @n[tag=UHCP_TurretHitbox] add UHCP_Minion
kill @s
