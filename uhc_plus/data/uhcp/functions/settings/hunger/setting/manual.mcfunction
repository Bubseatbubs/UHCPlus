# Turn on hunger timer manually
scoreboard players set %h_max uhcp_settings 1
tellraw @s {"text":"Hunger timer will be manually set through a command. Run /trigger hungerTimer to turn it on and off."}
