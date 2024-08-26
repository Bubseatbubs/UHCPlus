# New horn
data modify storage uhcp:hunting_call Horn set from entity @s SelectedItem
function uhcp:augments/effects/gold/huntingcall/new

# Replace player's horn
execute in uhcp:main run function uhcp:augments/effects/gold/huntingcall/mainhand/replace
