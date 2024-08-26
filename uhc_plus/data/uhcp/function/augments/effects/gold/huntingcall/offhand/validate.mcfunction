# Check cooldown
tag @s add UHCP_Hunter
execute store result score @s uhcp_initStatus run function uhcp:augments/effects/gold/huntingcall/search
function uhcp:augments/effects/gold/huntingcall/mainhand/determine
tag @s remove UHCP_Hunter
