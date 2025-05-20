# Compare flyer
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_scavengerflyer:true}] run return run function uhcp:augments/effects/gold/scavengerhunt/offhand
function uhcp:augments/effects/gold/scavengerhunt/slot with entity @s Inventory[{components:{"minecraft:custom_data":{uhcp_scavengerflyer:true}}}].components."minecraft:custom_data"
execute if score @s uhcp_initStatus matches 1 run function uhcp:augments/effects/gold/scavengerhunt/replace with entity @s Inventory[{components:{"minecraft:custom_data":{uhcp_scavengerflyer:true}}}]
advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
