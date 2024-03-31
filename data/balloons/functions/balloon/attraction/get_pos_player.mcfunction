execute as @e[tag=save.player,distance=..64,limit=1] at @s run summon marker ~ ~ ~ {Tags:["get.pos"]}
execute store result score *posToX math run data get entity @e[type=marker,tag=get.pos,distance=..64,limit=1] Pos[0] 100
execute store result score *posToY math run data get entity @e[type=marker,tag=get.pos,distance=..64,limit=1] Pos[1] 100
execute store result score *posToZ math run data get entity @e[type=marker,tag=get.pos,distance=..64,limit=1] Pos[2] 100
kill @e[type=marker,tag=get.pos,distance=..64,limit=1]