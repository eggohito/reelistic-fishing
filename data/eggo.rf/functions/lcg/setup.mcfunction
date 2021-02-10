#> eggo.rf:lcg/setup
#
#   set the constants
#
# @within function eggo.rf:load


# Set the constants
scoreboard players set #lcg.modulus eggo.rf 10

scoreboard players set #lcg.increment eggo.rf 12345

scoreboard players set #lcg.multiplier eggo.rf 1103515245

execute unless score #lcg.seed eggo.rf = #lcg.seed eggo.rf run function eggo.rf:lcg/get_seed