# First half of array
execute if score %range uhcp_aug_sh_item matches 0..9 run return run function uhcp:augments/effects/gold/scavengerhunt/array/first_half
execute if score %range uhcp_aug_sh_item matches 10..19 run function uhcp:augments/effects/gold/scavengerhunt/array/second_half
