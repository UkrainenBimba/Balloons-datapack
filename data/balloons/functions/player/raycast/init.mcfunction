tag @s remove start.raycast

tag @s add raycaster
execute store result score *distance math run attribute @s minecraft:player.entity_interaction_range get 2
execute anchored eyes positioned ^ ^ ^0.5 run function balloons:player/raycast/loop
tag @s remove raycaster