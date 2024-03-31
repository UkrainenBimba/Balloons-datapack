scoreboard players operation *TEMP_ID ballonsID = @s ballonsID
execute as @e[type=slime,tag=balloon.leash,distance=..4] if score @s ballonsID = *TEMP_ID ballonsID run tag @s add save.slime

tag @s add save.balloon
execute as @e[type=slime,tag=save.slime,distance=..4,limit=1] on leasher if entity @s[tag=save.player] as @e[type=slime,tag=save.slime,distance=..4,limit=1] run function balloons:balloon/tie/retie_to_mob
tag @s remove save.balloon

tag @e[type=slime,tag=save.slime,distance=..4,limit=1] remove save.slime
scoreboard players reset *TEMP_ID ballonsID