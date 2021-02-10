#> eggo.rf:lcg/get_seed
#
#   get the seed using UUID[0]
#
# @within function eggo.rf:load


# summon a temporary AEC to get the UUID[0] from, and kill it
summon area_effect_cloud ~ ~ ~ {Tags: ["eggo.rf.lcg.seed"]}

execute store result score #lcg.seed eggo.rf run data get entity @e[type = area_effect_cloud, tag = eggo.rf.lcg.seed, distance = 0, limit = 1] UUID[0]

kill @e[type = area_effect_cloud, tag = eggo.rf.lcg.seed, distance = 0, limit = 1]