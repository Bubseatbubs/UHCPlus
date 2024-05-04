# Updates a summoned entity

# Other
execute if entity @s[tag=UHCP_WarningSymbol] at @s run function uhcp:entity/warning_symbol/update
execute if entity @s[tag=UHCP_Scout] at @s unless entity @a[distance=..3] run function uhcp:augments/effects/silver/structurescout/clear
execute if entity @s[tag=UHCP_RunicSentrySummon] at @s if entity @p[gamemode=survival,distance=..8] run function uhcp:entity/runic_sentry_summon
execute if entity @s[tag=UHCP_SoulApple] at @s run function uhcp:kill/soul_apple/update

# Consumables
execute if entity @s[tag=UHCP_WebSlinger] at @s run function uhcp:consumables/web_slinger/update

# Relics
execute if entity @s[tag=UHCP_Saber] run return run function uhcp:relics/soulflames_embrace/update
execute if entity @s[tag=UHCP_Voltrune] run return run function uhcp:relics/voltrune/update
execute if entity @s[tag=UHCP_Buzzburst] at @s run return run function uhcp:relics/buzzburst/update
execute if entity @s[tag=UHCP_TurretOrigin] at @s run function uhcp:relics/runic_sentry/update
execute if entity @s[tag=UHCP_TurretShot] at @s run function uhcp:relics/runic_sentry/laser/update
execute if entity @s[tag=UHCP_WebORang] at @s run function uhcp:relics/web_o_rang/update
execute if entity @s[tag=UHCP_WindfallPiece] at @s run function uhcp:relics/windfall/piece/update
execute if entity @s[tag=UHCP_TempCobweb] at @s run function uhcp:relics/web_o_rang/update_temp_cobweb
execute if entity @s[tag=UHCP_GoldBlock] run return run function uhcp:relics/windfall/update
execute if entity @s[tag=UHCP_SCloneStand] run return run function uhcp:relics/smooth_getaway/update
execute if entity @s[tag=UHCP_DragonsProtection] run return run function uhcp:relics/dragons_protection/update

# Titans
execute if entity @s[tag=UHCP_BigBone] at @s run return run function uhcp:titans/bone_colossus/bone_jump/update
execute if entity @s[tag=UHCP_ArachneCobweb] at @s run return run function uhcp:titans/arachne/cobwebs/update
execute if entity @s[tag=UHCP_ArachneSpiderAI] at @s unless entity @e[tag=UHCP_ArachneSpider,distance=..2.5] run function uhcp:entity/instant_kill
execute if entity @s[tag=UHCP_GigantusCircleStrike] at @s run return run function uhcp:titans/gigantus/circle_strike/update
execute if entity @s[tag=UHCP_GigaCreeperLightning] at @s run return run function uhcp:titans/giga_creeper/lightning/update
execute if entity @s[tag=UHCP_SeraphimLaserIndicator] at @s run return run function uhcp:titans/seraphim/laser/indicator/update
execute if entity @s[tag=UHCP_FerrumLanding] at @s run return run function uhcp:titans/ferrum/jump/update_indicator
execute if entity @s[tag=UHCP_GigaCreeperTNT] at @s run return run function uhcp:titans/giga_creeper/tnt/update
execute if entity @s[tag=UHCP_TritonTrident] at @s run return run function uhcp:titans/triton/trident/update
execute if entity @s[tag=UHCP_SeraphimAI] at @s unless entity @e[tag=UHCP_Seraphim,distance=..16] run function uhcp:entity/instant_kill
execute if entity @s[tag=UHCP_SeraphimLaser] at @s run return run function uhcp:titans/seraphim/laser/update
execute if entity @s[tag=UHCP_TritonTridentHitbox,nbt={inGround:1b}] at @s run return run kill @s
execute if entity @s[tag=UHCP_BoneBlock] run return run function uhcp:titans/bone_colossus/block/update
execute if entity @s[tag=UHCP_AnvilBlock] run return run function uhcp:titans/ferrum/block/update
execute if entity @s[tag=UHCP_FerrumBlockIndicator] run return run function uhcp:titans/ferrum/block/indicator/update
execute if entity @s[tag=UHCP_InfernusCircleStrike] run return run function uhcp:titans/infernus/circle_fire/update
execute if entity @s[tag=UHCP_TyrionSaber] run return run function uhcp:titans/tyrion/soulflames_embrace/update_soulflame
execute if entity @s[tag=UHCP_TyrionSoulflame] run return run function uhcp:titans/tyrion/soulflames_embrace/update
execute if entity @s[tag=UHCP_TyrionVoltrune] run return run function uhcp:titans/tyrion/voltrune/update
execute if entity @s[tag=UHCP_InfernusFireball] run return run function uhcp:titans/infernus/fireball/update
execute if entity @s[tag=UHCP_NetherPortal] run return run function uhcp:titans/gallie/nether_portal/update
execute if entity @s[tag=UHCP_HoglinPortal] run return run function uhcp:titans/gallie/hoglin_portal/update
execute if entity @s[tag=UHCP_GallieNetherPortal] run return run function uhcp:titans/gallie/nether_portal/indicator/update
execute if entity @s[tag=UHCP_Bellan] unless entity @e[tag=UHCP_Gallie,distance=..12] run kill @s

# Augments
execute if entity @s[tag=UHCP_PhantomClaw,tag=!UHCP_FlyingTowardsTarget] run return run function uhcp:augments/effects/gold/phantomclaw/update
execute if entity @s[tag=UHCP_FlyingTowardsTarget] at @s run return run function uhcp:augments/effects/gold/phantomclaw/update_flight
execute if entity @s[tag=UHCP_TrailblazeMarker] at @s run return run function uhcp:augments/effects/prismatic/trailblazer/update_fire
execute if entity @s[tag=UHCP_Sniffa] at @s run function uhcp:augments/effects/gold/sniffa/update
execute if entity @s[tag=UHCP_Prop] at @s run function uhcp:augments/effects/silver/prophunt/update
execute if entity @s[tag=UHCP_RaLaser] at @s run function uhcp:consumables/ras_gaze/update
execute if entity @s[tag=UHCP_GraveMarker] at @s run function uhcp:titans/gigantus/graves/update
execute if entity @s[tag=UHCP_FenrirMinion] at @s run function uhcp:titans/fenrir/wolves/update
execute if entity @s[tag=UHCP_KungfuPanda] at @s run function uhcp:augments/effects/prismatic/kungfupanda/update
execute if entity @s[tag=UHCP_Bee] at @s run return run function uhcp:entity/bees/update
