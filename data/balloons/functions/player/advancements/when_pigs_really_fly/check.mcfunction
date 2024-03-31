tag @s add save.player
execute on vehicle if score @s balloonsUsedPrev matches 3.. at @s as @a[tag=save.player,limit=1,distance=..4] run function balloons:player/advancements/when_pigs_really_fly/grant
tag @s remove save.player