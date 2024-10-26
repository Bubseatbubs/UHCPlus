# Summoned Buzzburst arrow
data merge entity @s {pickup:0b,PierceLevel:127b,Tags:["UHCP_CurrentBuzzburst","UHCP_Buzzburst","UHCP_Summon"],Silent:1b}
execute as @a[tag=UHCP_Owner,limit=1] at @s anchored eyes run tp @e[tag=UHCP_CurrentBuzzburst,limit=1] ^ ^ ^1.25 ~ ~
execute if items entity @a[tag=UHCP_Owner,limit=1] weapon.mainhand *[minecraft:custom_data~{uhcp_radiant:1b}] run tag @s add UHCP_SpawnBeeKnight
scoreboard players operation @s uhcp_team = @a[tag=UHCP_Owner,limit=1] uhcp_team

# Display
execute summon minecraft:block_display run function uhcp:relics/buzzburst/display

# Launch Buzzburst
execute as @e[tag=UHCP_Motion,limit=1] at @s run function uhcp:relics/buzzburst/motion
tag @s remove UHCP_CurrentBuzzburst
