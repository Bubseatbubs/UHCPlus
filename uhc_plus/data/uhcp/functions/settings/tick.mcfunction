scoreboard players enable @a settings
scoreboard players enable @a settings_player
scoreboard players enable @a settings_augments
scoreboard players enable @a settings_other
scoreboard players enable @a settings_lava
scoreboard players enable @a settings_border
scoreboard players enable @a settings_team
execute as @a if score @s settings matches 1.. run function uhcp:settings/pages/main
execute as @a if score @s settings_player matches 1.. run function uhcp:settings/pages/player/1
execute as @a if score @s settings_augments matches 1.. run function uhcp:settings/pages/augments/1
execute as @a if score @s settings_other matches 1.. run function uhcp:settings/pages/other/1
execute as @a if score @s settings_lava matches 1.. run function uhcp:settings/pages/lava/check
execute as @a if score @s settings_border matches 1.. run function uhcp:settings/pages/border/1
execute as @a if score @s settings_team matches 1.. run function uhcp:settings/pages/team/1