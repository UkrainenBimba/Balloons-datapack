execute store result score *posFromX math run data get entity @s Pos[0] 100
execute store result score *posFromY math run data get entity @s Pos[1] 100
execute store result score *posFromZ math run data get entity @s Pos[2] 100

#division of getting Pos for mob and for player ('cuz getting player's nbt data it's costly)
execute if entity @e[tag=save.player,distance=3.5..8,limit=1,type=!player] run function balloons:balloon/attraction/get_pos_default
execute if entity @e[tag=save.player,distance=3.5..8,limit=1,type=player] run function balloons:balloon/attraction/get_pos_player

function balloons:balloon/attraction/calculate_motion