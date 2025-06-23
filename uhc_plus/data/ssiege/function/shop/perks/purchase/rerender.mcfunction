# Update Price
execute as @s[team=blue] run function ssiege:shop/perks/update_blue_perk_costs
execute as @s[team=red] run function ssiege:shop/perks/update_red_perk_costs

# Re-render the shop with new prices for all currently shopping players
execute as @s[team=blue] run function ssiege:shop/perks/show_blue_perk_shop
execute as @s[team=red] run function ssiege:shop/perks/show_red_perk_shop
function ssiege:shop/runes/show_rune_shop

execute as @s[team=blue] as @a[team=blue,scores={ssiege_currently_shopping=1}] run function ssiege:shop/perks/show_blue_perk_shop
execute as @s[team=red] as @a[team=red,scores={ssiege_currently_shopping=1}] run function ssiege:shop/perks/show_red_perk_shop