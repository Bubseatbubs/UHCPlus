# Verification message for testkit
execute as @s[tag=UHCP_Operator] run function uhcp:testkit/kit
tellraw @s[tag=!UHCP_Operator] {"text":"Click here to receive the test kit.","color":"yellow","hoverEvent":{"action":"show_text","value":[{"text":"Confirm test kit."}]},"clickEvent":{"action":"run_command","value":"/scoreboard players set @s uhcp_testkit 1"}}
