# Determine outcome
execute if score @s uhcp_initStatus matches 1.. run return run function uhcp:augments/effects/gold/huntingcall/calculate
execute if score @s uhcp_initStatus matches 0 run return run function uhcp:augments/effects/gold/huntingcall/effect
function uhcp:augments/effects/gold/huntingcall/mainhand/new
