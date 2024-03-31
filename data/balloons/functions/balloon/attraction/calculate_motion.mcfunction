#basic mathematics, i don’t see the point in describing it, ok?

scoreboard players operation *posToX math -= *posFromX math
scoreboard players operation *posToY math -= *posFromY math
scoreboard players operation *posToZ math -= *posFromZ math

scoreboard players operation *x math = *posToX math
scoreboard players operation *y math = *posToY math
scoreboard players operation *z math = *posToZ math

scoreboard players operation *x math *= *posToX math
scoreboard players operation *x math /= *100 const
scoreboard players operation *y math *= *posToY math
scoreboard players operation *y math /= *100 const
scoreboard players operation *z math *= *posToZ math
scoreboard players operation *z math /= *100 const

scoreboard players operation *dist math = *x math
scoreboard players operation *dist math += *y math
scoreboard players operation *dist math += *z math

function balloons:balloon/attraction/set_motion

scoreboard players reset *dist math
scoreboard players reset *x math
scoreboard players reset *y math
scoreboard players reset *z math
scoreboard players reset *posToX math
scoreboard players reset *posToY math
scoreboard players reset *posToZ math
scoreboard players reset *posFromX math
scoreboard players reset *posFromY math
scoreboard players reset *posFromZ math