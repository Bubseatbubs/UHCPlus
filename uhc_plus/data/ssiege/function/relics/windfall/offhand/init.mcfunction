tag @s add UHCP_Owner
execute as @a[tag=!UHCP_Owner,team=!grace_period,distance=..9,gamemode=survival] unless score @s uhcp_team = @p[tag=UHCP_Owner] uhcp_team run tag @s add UHCP_HarvesterTarget
execute unless entity @e[tag=UHCP_HarvesterTarget] as @e[tag=!UHCP_Invulnerable,type=!#uhcp:inanimate_mobs,type=!minecraft:player,distance=..9] unless score @s uhcp_id = @p[tag=UHCP_Owner] uhcp_id unless score @s uhcp_team = @p[tag=UHCP_Owner] uhcp_team run tag @s add UHCP_HarvesterTarget
execute unless entity @e[tag=UHCP_HarvesterTarget] run return run scoreboard players reset @s uhcp_leave

function uhcp:relics/durability/offhand/reset
scoreboard players reset @s uhcp_leave
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_radiant:true}] run return run function uhcp:relics/windfall/radiant/init
function uhcp:relics/windfall/init
