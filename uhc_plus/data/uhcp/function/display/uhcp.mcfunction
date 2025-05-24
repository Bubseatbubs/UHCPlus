# UHC Plus game display updates
# Border size
execute store result storage uhcp:display border.size int 1 run worldborder get
function uhcp:display/border with storage uhcp:display border

# Player count
execute store result score %players uhcp_initStatus if entity @a[gamemode=!creative,gamemode=!spectator]
function uhcp:display/players

# Universal updates
function uhcp:display/update
