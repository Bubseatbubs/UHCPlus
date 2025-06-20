# Clear panes from improper players
scoreboard players set @s uhcp_leave 1000
clear @s *[minecraft:custom_data~{uhcp_lockedSlot:true}]
scoreboard players reset @s uhcp_leave
advancement revoke @s only uhcp:augments/tightly_packed_pane
