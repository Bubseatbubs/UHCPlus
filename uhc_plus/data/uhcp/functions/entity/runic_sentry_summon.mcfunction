tag @s add UHCP_Owner
scoreboard players set @s uhcp_team -1
function uhcp:relics/runic_sentry/init
tag @e[tag=UHCP_Turret,sort=nearest,limit=1] add UHCP_WellEngineered
tag @e[tag=UHCP_Turret,sort=nearest,limit=1] add UHCP_HostileTurret
effect give @e[type=giant,tag=UHCP_TurretHitbox,sort=nearest,limit=1] resistance infinite 2 true
kill @s