function uhcp:relics/durability/offhand/reset
scoreboard players reset @s uhcp_leave
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_radiant:true}] run return run function uhcp:relics/gravity_globe/radiant
function uhcp:relics/gravity_globe/init
