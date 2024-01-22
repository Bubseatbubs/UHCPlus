#Cycle to missing item
function uhcp:augments/cycle
execute if entity @a[tag=MSAllies,scores={MS_Array=1}] run function uhcp:augments/missingcheck
