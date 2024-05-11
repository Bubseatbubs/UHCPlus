scoreboard players set @s uhcp_aug_tier 1
give @s minecraft:golden_apple 10
clear @s *[minecraft:custom_data~{uhcp_scavengerflyer:1b}]

tellraw @s [{"text":"You finished the Scavenger Hunt!","color":"gold"},{"text":" You've received ","color":"gray"},{"text":"10 Golden Apples","color":"light_purple","bold":true},{"text":".","color":"gray"}]
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1 1
