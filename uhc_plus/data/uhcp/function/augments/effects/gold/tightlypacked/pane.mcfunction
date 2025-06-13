# Clear panes from improper players
scoreboard players set @s uhcp_leave 1000
clear @s *[minecraft:custom_data~{uhcp_lockedslot:1b}]
scoreboard players reset @s uhcp_leave
advancement revoke @s only uhcp:augments/tightly_packed_pane
advancement revoke @s only ssiege:tightly_packed_pane