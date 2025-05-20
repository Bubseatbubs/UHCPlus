scoreboard players set @s uhcp_leave 1000
clear @s *[minecraft:custom_data~{uhcp_sundisk:true}]
scoreboard players reset @s uhcp_leave
advancement revoke @s only uhcp:augments/glory_of_ra/sundisk
