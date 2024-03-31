scoreboard players operation *TEMP_ID playerID = @s playerID
execute at @s anchored eyes positioned ^ ^ ^0.25 as @e[type=interaction,tag=tie.balloon,distance=..8] if score @s playerID = *TEMP_ID playerID run function balloons:player/raycast/teleport2
tag @s remove dont.kill.interaction