# Update summoned entities
# Other
execute as @e[tag=UHCP_WarningSymbol] at @s run function uhcp:entity/warning_symbol/update
execute as @e[tag=UHCP_Scout] at @s unless entity @p[gamemode=survival,distance=..3] run function uhcp:augments/effects/silver/structurescout/clear
execute as @e[tag=UHCP_RunicSentrySummon] at @s if entity @p[gamemode=survival,distance=..8] run function uhcp:entity/runic_sentry_summon
execute as @e[tag=UHCP_SoulApple] at @s run function uhcp:kill/soul_apple/update

# Consumables
execute as @e[tag=UHCP_WebSlinger] at @s run function uhcp:consumables/web_slinger/update

# Relics
execute as @e[tag=UHCP_Saber] at @s run function uhcp:relics/soulflames_embrace/update
execute as @e[tag=UHCP_Voltrune] at @s run function uhcp:relics/voltrune/update
execute as @e[tag=UHCP_Buzzburst] at @s run function uhcp:relics/buzzburst/update
execute as @e[tag=UHCP_TurretOrigin] at @s run function uhcp:relics/runic_sentry/update
execute as @e[tag=UHCP_TurretShot] at @s run function uhcp:relics/runic_sentry/laser/update
execute as @e[tag=UHCP_WebORang] at @s run function uhcp:relics/web_o_rang/update
execute as @e[tag=UHCP_WindfallPiece] at @s run function uhcp:relics/windfall/piece/update
execute as @e[tag=UHCP_TempCobweb] at @s run function uhcp:relics/web_o_rang/update_temp_cobweb
execute as @e[tag=UHCP_GoldBlock] at @s run function uhcp:relics/windfall/update
execute as @e[tag=UHCP_SCloneStand] at @s run function uhcp:relics/smooth_getaway/update
execute as @e[tag=UHCP_DragonsProtection] at @s run function uhcp:relics/dragons_protection/update

# Titans
execute as @e[tag=UHCP_BigBone] at @s run function uhcp:titans/bone_colossus/bone_jump/update
execute as @e[tag=UHCP_ArachneCobweb] at @s run function uhcp:titans/arachne/cobwebs/update
execute as @e[tag=UHCP_ArachneSpiderAI] at @s unless entity @n[tag=UHCP_ArachneSpider,distance=..2.5] run function uhcp:entity/instant_kill
execute as @e[tag=UHCP_GigantusCircleStrike] at @s run function uhcp:titans/gigantus/circle_strike/update
execute as @e[tag=UHCP_GigaCreeperLightning] at @s run function uhcp:titans/giga_creeper/lightning/update
execute as @e[tag=UHCP_SeraphimLaserIndicator] at @s run function uhcp:titans/seraphim/laser/indicator/update
execute as @e[tag=UHCP_FerrumLanding] at @s run function uhcp:titans/ferrum/jump/update_indicator
execute as @e[tag=UHCP_GigaCreeperTNT] at @s run function uhcp:titans/giga_creeper/tnt/update
execute as @e[tag=UHCP_TritonTrident] at @s run function uhcp:titans/triton/trident/update
execute as @e[tag=UHCP_SeraphimAI] at @s unless entity @n[tag=UHCP_Seraphim,distance=..16] run function uhcp:entity/instant_kill
execute as @e[tag=UHCP_SeraphimLaser] at @s run function uhcp:titans/seraphim/laser/update
execute as @e[tag=UHCP_TritonTridentHitbox,nbt={inGround:1b}] run kill @s
execute as @e[tag=UHCP_BoneBlock] at @s run function uhcp:titans/bone_colossus/block/update
execute as @e[tag=UHCP_AnvilBlock] at @s run function uhcp:titans/ferrum/block/update
execute as @e[tag=UHCP_FerrumBlockIndicator] at @s run function uhcp:titans/ferrum/block/indicator/update
execute as @e[tag=UHCP_InfernusCircleStrike] at @s run function uhcp:titans/infernus/circle_fire/update
execute as @e[tag=UHCP_TyrionSaber] at @s run function uhcp:titans/tyrion/soulflames_embrace/update_soulflame
execute as @e[tag=UHCP_TyrionSoulflame] at @s run function uhcp:titans/tyrion/soulflames_embrace/update
execute as @e[tag=UHCP_TyrionVoltrune] at @s run function uhcp:titans/tyrion/voltrune/update
execute as @e[tag=UHCP_InfernusFireball] at @s run function uhcp:titans/infernus/fireball/update
execute as @e[tag=UHCP_NetherPortal] at @s run function uhcp:titans/gallie/nether_portal/update
execute as @e[tag=UHCP_HoglinPortal] at @s run function uhcp:titans/gallie/hoglin_portal/update
execute as @e[tag=UHCP_GallieNetherPortal] at @s run function uhcp:titans/gallie/nether_portal/indicator/update
execute as @e[tag=UHCP_Bellan] at @s unless entity @n[tag=UHCP_Gallie,distance=..12] run kill @s

# Augments
execute as @e[tag=UHCP_PhantomSaber,tag=!UHCP_FlyingTowardsTarget] at @s run function uhcp:augments/effects/gold/phantomsaber/update
execute as @e[tag=UHCP_FlyingTowardsTarget] at @s run function uhcp:augments/effects/gold/phantomsaber/update_flight
execute as @e[tag=UHCP_TrailblazeMarker] at @s run function uhcp:augments/effects/prismatic/trailblazer/update_fire
execute as @e[tag=UHCP_Sniffa] at @s run function uhcp:augments/effects/gold/sniffa/update
execute as @e[tag=UHCP_Prop] at @s run function uhcp:augments/effects/silver/prophunt/update
execute as @e[tag=UHCP_RaLaser] at @s run function uhcp:consumables/ras_gaze/update
execute as @e[tag=UHCP_GraveMarker] at @s run function uhcp:titans/gigantus/graves/update
execute as @e[tag=UHCP_FenrirMinion] at @s run function uhcp:titans/fenrir/wolves/update
execute as @e[tag=UHCP_KungfuPanda] at @s run function uhcp:augments/effects/prismatic/kungfupanda/update
execute as @e[tag=UHCP_Bee] at @s run function uhcp:entity/bees/update
