scoreboard players operation @s balloonsUsedPrev = @s balloonsUsed

execute store result storage balloons:temp players_stats.gravity float -0.03 run scoreboard players get @s balloonsUsedPrev
execute store result storage balloons:temp players_stats.safe_fall_distance float 15 run scoreboard players get @s balloonsUsedPrev
execute store result storage balloons:temp players_stats.fall_damage_multiplier float -0.15 run scoreboard players get @s balloonsUsedPrev

function balloons:player/set_attributes with storage balloons:temp players_stats

scoreboard players reset *temp math
data remove storage balloons:temp players_stats