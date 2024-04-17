execute as @a[scores={settings=1..}] run function uhcp:settings/pages/main
execute as @a[scores={settings_player=1..}] run function uhcp:settings/pages/player/1
execute as @a[scores={settings_augments=1..}] run function uhcp:settings/pages/augments/1
execute as @a[scores={settings_other=1..}] run function uhcp:settings/pages/other/1
execute as @a[scores={settings_lava=1..}] run function uhcp:settings/pages/lava/check
execute as @a[scores={settings_border=1..}] run function uhcp:settings/pages/border/1
execute as @a[scores={settings_team=1..}] run function uhcp:settings/pages/team/1
scoreboard players enable @a settings
scoreboard players enable @a settings_player
scoreboard players enable @a settings_augments
scoreboard players enable @a settings_other
scoreboard players enable @a settings_lava
scoreboard players enable @a settings_border
scoreboard players enable @a settings_team
