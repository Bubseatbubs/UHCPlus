function uhcp:relics/durability/reset
scoreboard players reset @s uhcp_leave
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_radiant:true}] run return run function uhcp:relics/buzzburst/radiant/init
function uhcp:relics/buzzburst/init
