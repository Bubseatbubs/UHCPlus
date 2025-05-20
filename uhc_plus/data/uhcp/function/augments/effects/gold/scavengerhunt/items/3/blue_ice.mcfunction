# Found item
function uhcp:augments/effects/gold/scavengerhunt/items/3/success
tellraw @s [{"text":"You obtained ","color":"gray"},{"text":"Blue Ice","color":"white","bold":true},{"text":". [","color":"gray"},{"score":{"name":"@s","objective":"uhcp_aug_count"},"color":"light_purple"},{"text":"/5]","color":"gray"}]
