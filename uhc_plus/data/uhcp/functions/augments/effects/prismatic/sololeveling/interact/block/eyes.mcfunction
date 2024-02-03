# At player's head
execute unless predicate uhcp:dimensions/minecraft/the_nether run clone ^ ^ ^ ^ ^ ^ to uhcp:main ~ -64 ~
execute if predicate uhcp:dimensions/minecraft/the_nether run clone ^ ^ ^ ^ ^ ^ to uhcp:hell ~ -64 ~
setblock ^ ^ ^ minecraft:nether_portal
tp @e[tag=UHCP_SLBNew] ^ ^ ^
scoreboard players set @e[tag=UHCP_SLBNew] uhcp_gameTime 3
