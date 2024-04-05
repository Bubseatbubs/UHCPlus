#>  uhcp:milk_bucket/consume
#   Re-apply effects after milk bucket is used
#
# @within  uhcp:entity_actions/consume_milk_bucket

#declare advancement uhcp:entity_actions/consume_milk_bucket

execute unless score @s uhcp_milkBucket matches 1.. run scoreboard players set @s uhcp_milkBucket 1

advancement revoke @s only uhcp:entity_actions/consume_milk_bucket
