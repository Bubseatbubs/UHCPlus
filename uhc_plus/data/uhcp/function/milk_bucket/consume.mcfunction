#>  uhcp:milk_bucket/consume
#   Re-apply effects after milk bucket is used
#
# @within  uhcp:entity_actions/consume_milk_bucket

#declare advancement uhcp:entity_actions/consume_milk_bucket

tag @s add UHCP_MilkBucket

advancement revoke @s only uhcp:entity_actions/consume_milk_bucket
