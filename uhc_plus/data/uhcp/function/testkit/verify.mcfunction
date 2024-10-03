# Verify player is operator
scoreboard players reset @s testkit
execute as @s[gamemode=!survival] run return fail
execute as @s[tag=UHCP_Operator] run return run function uhcp:testkit/kit
tellraw @s {"text":"Click here to receive a test kit.","color":"yellow","hoverEvent":{"action":"show_text","value":[{"text":"Request test kit."}]},"clickEvent":{"action":"run_command","value":"/scoreboard players set @s uhcp_testkit 1"}}
