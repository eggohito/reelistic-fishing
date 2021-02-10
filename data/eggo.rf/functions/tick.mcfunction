#> eggo.rf:tick
#
#   main tick function for the `eggo.rf` namespace
#
# @within function eggo.rf:load


# get the motion values of the reeled item entity
execute as @e[type = item, tag = !eggo.rf.entity.motion_get, nbt = {Item: {tag: {eggo: {rf: {}}}}}] run function eggo.rf:misc/motion_get


# check for items with `{eggo: {rf: {custom: <bool>}}}` NBT
execute as @e[type = item, nbt = {Item: {tag: {eggo: {rf: {custom: 0b}}}}}] at @s run function eggo.rf:list/default

execute as @e[type = item, nbt = {Item: {tag: {eggo: {rf: {custom: 1b}}}}}] at @s run function eggo.rf:list/custom


# apply the stored motion value to entity
execute as @e[tag = eggo.rf.entity.motion_apply] run function eggo.rf:misc/motion_apply


# loop this function
schedule function eggo.rf:tick 1t