# Set up arrays
data remove storage uhcp:augments ScavengerHunt

data modify storage uhcp:augments ScavengerHunt.items_set set value [B;0b,1b,2b,3b,4b,5b,6b,7b,8b]
data modify storage uhcp:augments ScavengerHunt.items set value [B;]

scoreboard players set %last uhcp_aug_sh_item 9

# Randomize items array
function uhcp:augments/effects/gold/scavengerhunt/array

# Store numbers into scoreboard values
execute store result score %items_1 uhcp_aug_sh_item run data get storage uhcp:augments ScavengerHunt.items[0]
execute store result score %items_2 uhcp_aug_sh_item run data get storage uhcp:augments ScavengerHunt.items[1]
execute store result score %items_3 uhcp_aug_sh_item run data get storage uhcp:augments ScavengerHunt.items[2]
execute store result score %items_4 uhcp_aug_sh_item run data get storage uhcp:augments ScavengerHunt.items[3]
execute store result score %items_5 uhcp_aug_sh_item run data get storage uhcp:augments ScavengerHunt.items[4]