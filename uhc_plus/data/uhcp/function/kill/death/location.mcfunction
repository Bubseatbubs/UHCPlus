# Restore player's death location if necessary
tag @s add UHCP_Respawned
function uhcp:kill/death/teleport
tag @s remove UHCP_Respawned
