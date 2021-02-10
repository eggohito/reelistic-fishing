#> eggo.rf:misc/motion_apply
#
#   apply the stored motion values in scoreboard to tagged entity
#
# @within function eggo.rf:tick


# apply the stored motion values in scoreboard to tagged entity
execute store result entity @s Motion[0] double 0.001 run scoreboard players get #motion_x eggo.rf

execute store result entity @s Motion[1] double 0.001 run scoreboard players get #motion_y eggo.rf

execute store result entity @s Motion[2] double 0.001 run scoreboard players get #motion_z eggo.rf


# remove tag, and kill the reeled tagged item entity
tag @s remove eggo.rf.entity.motion_apply

kill @e[tag = eggo.rf.entity.motion_get]