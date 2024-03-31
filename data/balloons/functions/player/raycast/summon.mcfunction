summon interaction ~ ~-0.05 ~ {Tags:["tie.balloon","set.score"],response:1b,width:0.1f,height:0.1f}
scoreboard players set @e[type=interaction,tag=set.score,distance=..2,limit=1] math 2
tag @e[type=interaction,tag=set.score,distance=..2,limit=1] remove set.score