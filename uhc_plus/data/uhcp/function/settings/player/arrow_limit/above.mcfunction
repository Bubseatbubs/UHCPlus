# Above minimum value
scoreboard players set %arrow_limit uhcp_arrowCount 2369
function uhcp:settings/pages/player
tellraw @s [{"text":"Arrow Limit has been turned "},{"text":"OFF","color":"red"},{"text":"."}]
