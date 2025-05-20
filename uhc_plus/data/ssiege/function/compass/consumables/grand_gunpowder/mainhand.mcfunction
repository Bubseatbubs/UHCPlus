execute as @s[tag=UHCP_Explode] run return run scoreboard players reset @s uhcp_leave
item replace entity @s weapon.mainhand with minecraft:air
function uhcp:consumables/grand_gunpowder/init
