# Titan health
$bossbar add uhcp:titan_health.$(id) ""
$bossbar set uhcp:titan_health.$(id) color red
$bossbar set uhcp:titan_health.$(id) style notched_10
$bossbar set uhcp:titan_health.$(id) visible false
$bossbar set uhcp:titan_health.$(id) players @s

# Trigger top charge
$bossbar add uhcp:top_charge.$(id) "Time Until Teleport:"
$bossbar set uhcp:top_charge.$(id) color purple
$bossbar set uhcp:top_charge.$(id) style notched_6
$bossbar set uhcp:top_charge.$(id) max 60
$bossbar set uhcp:top_charge.$(id) visible false
$bossbar set uhcp:top_charge.$(id) players @s
