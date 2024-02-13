# Re-apply effects after milk bucket is used
tag @s add UHCP_EffectDefault
execute unless score %uhcp_effectDefault uhcp_initStatus matches 1.. run function uhcp:augments/milk_bucket/default

execute if score @s uhcp_a_selectedAugment matches 0..99 run function uhcp:augments/milk_bucket/gold
execute if score @s uhcp_a_selectedAugment matches 100..199 run function uhcp:augments/milk_bucket/silver
execute if score @s uhcp_a_selectedAugment matches 200..299 run function uhcp:augments/milk_bucket/prismatic

advancement revoke @s only uhcp:augments/consume_milk_bucket
