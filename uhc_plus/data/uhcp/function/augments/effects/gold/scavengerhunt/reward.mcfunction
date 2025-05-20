scoreboard players set @s uhcp_aug_tier 1
scoreboard players set @s uhcp_leave 1000
give @s minecraft:golden_apple 10
clear @s *[minecraft:custom_data~{uhcp_scavengerflyer:true}]
scoreboard players reset @s uhcp_leave

tellraw @s [{"text":"You finished the Scavenger Hunt!","color":"gold"},{"text":" You've received ","color":"gray"},{"text":"10 Golden Apples","color":"light_purple","bold":true},{"text":".","color":"gray"}]
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1 1
