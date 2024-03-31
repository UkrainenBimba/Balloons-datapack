scoreboard players remove *distance math 1

execute unless block ~ ~ ~ #balloons:intangible run scoreboard players reset *distance math
execute positioned ~-.15 ~-.15 ~-.15 as @e[dx=0,tag=!raycaster,limit=1,tag=!dont.detect.on.raycast,type=#balloons:can_be_tied_to_a_balloon] positioned ~-.7 ~-.7 ~-.7 if entity @s[dx=0] positioned ~.85 ~.85 ~.85 run function balloons:player/raycast/hit

execute if score *distance math matches 1.. positioned ^ ^ ^0.5 run function balloons:player/raycast/loop