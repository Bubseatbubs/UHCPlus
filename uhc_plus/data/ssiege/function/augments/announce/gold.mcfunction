# Announce Sniffer Siege Gold Augments (refer to dev sheet for ID numbers)
# Gold augments
execute as @a[scores={uhcp_augment=0}] run tellraw @a[tag=UHCP_AugmentAnnounce] [{"selector":"@s","color":"blue"},{"text":" selected","color":"white"},{"text":" AFK","color":"gold"},{"text":"!","color":"white"}]
execute as @a[scores={uhcp_augment=1}] run tellraw @a[tag=UHCP_AugmentAnnounce] [{"selector":"@s","color":"blue"},{"text":" selected","color":"white"},{"text":" Babysitting","color":"gold"},{"text":"!","color":"white"}]
execute as @a[scores={uhcp_augment=2}] run tellraw @a[tag=UHCP_AugmentAnnounce] [{"selector":"@s","color":"blue"},{"text":" selected","color":"white"},{"text":" Back Off","color":"gold"},{"text":"!","color":"white"}]