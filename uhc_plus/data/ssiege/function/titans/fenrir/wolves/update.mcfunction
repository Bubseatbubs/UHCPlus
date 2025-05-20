execute as @n[tag=UHCP_Fenrir] on target run tag @s add UHCP_FenrirTarget
data modify entity @s AngryAt set from entity @p[tag=UHCP_FenrirTarget] UUID
tag @a remove UHCP_FenrirTarget
