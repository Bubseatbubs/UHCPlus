execute as @e[tag=UHCP_LobbyOrigin,limit=1] at @s align y run function ssiege:start/encounters/summon_encounter_entity

title @a times 20 80 40

function ssiege:start/encounters/set_encounter_subtitle
function ssiege:start/encounters/announce_encounter

title @a title {"text":"Opening Encounter"}