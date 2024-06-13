# Secondary spread commands
execute store success score %spread uhcp_initStatus run spreadplayers ~ ~ 4 8 false @a[scores={uhcp_initStatus=1}]
execute if score %spread uhcp_initStatus matches 0 store success score %spread uhcp_initStatus run spreadplayers ~ ~ 0 8 false @a[scores={uhcp_initStatus=1}]
execute if score %spread uhcp_initStatus matches 0 run tp @a[scores={uhcp_initStatus=1}] ~ ~ ~
