#> eggo.rf:misc/motion_get
#
#   get the motion value of the reeled item entity to scoreboard
#
# @within function eggo.rf:tick


# add a temporary tag
tag @s add eggo.rf.entity.motion_get


# reset the score holders' values before storing new values
scoreboard players reset #motion_x eggo.rf

scoreboard players reset #motion_y eggo.rf

scoreboard players reset #motion_z eggo.rf

execute store result score #motion_x eggo.rf run data get entity @s Motion[0] 1300

execute store result score #motion_y eggo.rf run data get entity @s Motion[1] 1200

execute store result score #motion_z eggo.rf run data get entity @s Motion[2] 1300