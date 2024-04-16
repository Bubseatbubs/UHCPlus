scoreboard players add @s uhcp_aug_count 1

execute if score %current_item uhcp_aug_count matches 1 run tag @s add UHCP_SHItem1
execute if score %current_item uhcp_aug_count matches 2 run tag @s add UHCP_SHItem2
execute if score %current_item uhcp_aug_count matches 3 run tag @s add UHCP_SHItem3
execute if score %current_item uhcp_aug_count matches 4 run tag @s add UHCP_SHItem4
execute if score %current_item uhcp_aug_count matches 5 run tag @s add UHCP_SHItem5

execute if score %current_item uhcp_aug_count matches 1 run scoreboard players operation %item uhcp_aug_count = %items_1 uhcp_aug_sh_item
execute if score %current_item uhcp_aug_count matches 2 run scoreboard players operation %item uhcp_aug_count = %items_2 uhcp_aug_sh_item
execute if score %current_item uhcp_aug_count matches 3 run scoreboard players operation %item uhcp_aug_count = %items_3 uhcp_aug_sh_item
execute if score %current_item uhcp_aug_count matches 4 run scoreboard players operation %item uhcp_aug_count = %items_4 uhcp_aug_sh_item
execute if score %current_item uhcp_aug_count matches 5 run scoreboard players operation %item uhcp_aug_count = %items_5 uhcp_aug_sh_item

execute if score %item uhcp_aug_count matches 0 if items entity @s container.* suspicious_stew run tellraw @s [{"text":"You obtained ","color":"gray"},{"text":"Suspicious Stew","color":"white","bold":true},{"text":". [","color":"gray"},{"score":{"name":"@s","objective":"uhcp_aug_count"},"color":"light_purple"},{"text":"/5]","color":"gray"}]
execute if score %item uhcp_aug_count matches 1 if items entity @s container.* chiseled_quartz_block run tellraw @s [{"text":"You obtained ","color":"gray"},{"text":"Chiseled Quartz","color":"white","bold":true},{"text":". [","color":"gray"},{"score":{"name":"@s","objective":"uhcp_aug_count"},"color":"light_purple"},{"text":"/5]","color":"gray"}]
execute if score %item uhcp_aug_count matches 2 if items entity @s container.* fermented_spider_eye run tellraw @s [{"text":"You obtained ","color":"gray"},{"text":"Fermented Spider Eye","color":"white","bold":true},{"text":". [","color":"gray"},{"score":{"name":"@s","objective":"uhcp_aug_count"},"color":"light_purple"},{"text":"/5]","color":"gray"}]
execute if score %item uhcp_aug_count matches 3 if items entity @s container.* ender_pearl run tellraw @s [{"text":"You obtained ","color":"gray"},{"text":"Ender Pearl","color":"white","bold":true},{"text":". [","color":"gray"},{"score":{"name":"@s","objective":"uhcp_aug_count"},"color":"light_purple"},{"text":"/5]","color":"gray"}]
execute if score %item uhcp_aug_count matches 4 if items entity @s container.* egg run tellraw @s [{"text":"You obtained ","color":"gray"},{"text":"Egg","color":"white","bold":true},{"text":". [","color":"gray"},{"score":{"name":"@s","objective":"uhcp_aug_count"},"color":"light_purple"},{"text":"/5]","color":"gray"}]
execute if score %item uhcp_aug_count matches 5 if items entity @s container.* glowstone run tellraw @s [{"text":"You obtained ","color":"gray"},{"text":"Glowstone Block","color":"white","bold":true},{"text":". [","color":"gray"},{"score":{"name":"@s","objective":"uhcp_aug_count"},"color":"light_purple"},{"text":"/5]","color":"gray"}]
execute if score %item uhcp_aug_count matches 6 if items entity @s container.* jukebox run tellraw @s [{"text":"You obtained ","color":"gray"},{"text":"Jukebox","color":"white","bold":true},{"text":". [","color":"gray"},{"score":{"name":"@s","objective":"uhcp_aug_count"},"color":"light_purple"},{"text":"/5]","color":"gray"}]
execute if score %item uhcp_aug_count matches 7 if items entity @s container.* glow_ink_sac run tellraw @s [{"text":"You obtained ","color":"gray"},{"text":"Glow Ink Sac","color":"white","bold":true},{"text":". [","color":"gray"},{"score":{"name":"@s","objective":"uhcp_aug_count"},"color":"light_purple"},{"text":"/5]","color":"gray"}]
execute if score %item uhcp_aug_count matches 8 if items entity @s container.* saddle run tellraw @s [{"text":"You obtained ","color":"gray"},{"text":"Saddle","color":"white","bold":true},{"text":". [","color":"gray"},{"score":{"name":"@s","objective":"uhcp_aug_count"},"color":"light_purple"},{"text":"/5]","color":"gray"}]

playsound block.note_block.chime master @s ~ ~ ~ 1 1 1

