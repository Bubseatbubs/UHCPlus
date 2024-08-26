# Prepare Hunting Call marker
tag @s add UHCP_HuntingCall

# Assign ID
scoreboard players add %hunting_call uhcp_id 1
scoreboard players operation @s uhcp_id = %hunting_call uhcp_id

# Cooldown
scoreboard players set @s uhcp_itemCount 3600
