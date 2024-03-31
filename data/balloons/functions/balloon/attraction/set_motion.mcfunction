scoreboard players remove *dist math 1225
scoreboard players operation *dist math /= *4 math
scoreboard players operation *dist math < *500 const

scoreboard players operation *posToX math *= *dist math
scoreboard players operation *posToY math *= *dist math
scoreboard players operation *posToZ math *= *dist math

execute store result score *motionX math run data get entity @s Motion[0] 1000000
execute store result score *motionY math run data get entity @s Motion[1] 1000000
execute store result score *motionZ math run data get entity @s Motion[2] 1000000
scoreboard players operation *motionX math += *posToX math
scoreboard players operation *motionY math += *posToY math
scoreboard players operation *motionZ math += *posToZ math
execute store result entity @s Motion[0] double 0.000001 run scoreboard players get *motionX math
execute store result entity @s Motion[1] double 0.000001 run scoreboard players get *motionY math
execute store result entity @s Motion[2] double 0.000001 run scoreboard players get *motionZ math

scoreboard players reset *motionX math
scoreboard players reset *motionY math
scoreboard players reset *motionZ math