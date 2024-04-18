function uhcp:relics/windfall/piece/init
execute as @e[tag=UHCP_New,sort=nearest,limit=1] at @s rotated as @e[tag=UHCP_Owner,sort=nearest,limit=1] run tp @s ~ ~ ~ 240 0
tag @e remove UHCP_New

function uhcp:relics/windfall/piece/init
execute as @e[tag=UHCP_New,sort=nearest,limit=1] at @s rotated as @e[tag=UHCP_Owner,sort=nearest,limit=1] run tp @s ~ ~ ~ 120 0
tag @e remove UHCP_New

function uhcp:relics/windfall/piece/init
execute as @e[tag=UHCP_New,sort=nearest,limit=1] at @s rotated as @e[tag=UHCP_Owner,sort=nearest,limit=1] run tp @s ~ ~ ~ 0 0
tag @e remove UHCP_New
