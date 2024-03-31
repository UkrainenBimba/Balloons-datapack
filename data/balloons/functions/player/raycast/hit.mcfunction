execute as @a[tag=raycaster,limit=1] unless entity @s[tag=dont.kill.interaction] at @s anchored eyes positioned ^ ^ ^0.25 run function balloons:player/raycast/summon
execute as @a[tag=raycaster,limit=1] if entity @s[tag=dont.kill.interaction] at @s run function balloons:player/raycast/teleport
scoreboard players reset *distance math
scoreboard players operation @s playerID = @a[tag=raycaster,limit=1] playerID
tag @s add can.be.tied