function uhcp:relics/durability/reset
scoreboard players reset @s uhcp_leave
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_radiant:true}] run tag @s add UHCP_PreparePhantomPains
function uhcp:relics/soulflames_embrace/prepare
