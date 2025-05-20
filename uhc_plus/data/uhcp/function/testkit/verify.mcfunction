# Verify player is operator
scoreboard players reset @s testkit
execute as @s[gamemode=!survival] run return fail
execute as @s[tag=UHCP_Operator] run return run function uhcp:testkit/kit
tellraw @s {"text":"Click here to receive a test kit.","color":"yellow","hover_event":{"action":"show_text","value":[{"text":"Request test kit."}]},"click_event":{"action":"run_command","command":"/function uhcp:testkit/operator"}}
