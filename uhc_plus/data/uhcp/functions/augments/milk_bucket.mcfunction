#>  uhcp:augments/milk_bucket
#   Re-apply effects after milk bucket is used
#
# @within  uhcp:entity_actions/consume_milk_bucket

#declare advancement uhcp:entity_actions/consume_milk_bucket

tag @s add UHCP_EffectDefault
execute unless score %effect_def uhcp_initStatus matches 1 run function uhcp:augments/milk_bucket/default

execute if score @s uhcp_augment matches 0..99 run function uhcp:augments/milk_bucket/gold
execute if score @s uhcp_augment matches 100..199 run function uhcp:augments/milk_bucket/silver
execute if score @s uhcp_augment matches 200..299 run function uhcp:augments/milk_bucket/prismatic

advancement revoke @s only uhcp:entity_actions/consume_milk_bucket
