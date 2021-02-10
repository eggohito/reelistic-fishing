#> eggo.rf:lcg/random
#
#   generate a random number
#
# @within function eggo.rf:misc/apply_variant


# take the seed
scoreboard players operation %lcg.out eggo.rf = #lcg.seed eggo.rf


# do the operations to get the raw number
scoreboard players operation %lcg.out eggo.rf *= #lcg.multiplier eggo.rf

scoreboard players operation %lcg.out eggo.rf += #lcg.increment eggo.rf


# use int overflow to get the next seed
scoreboard players operation #lcg.seed eggo.rf = %lcg.out eggo.rf


# if there isn't a modulus override, use the default one
execute unless score #lcg.modulus eggo.rf = #lcg.modulus eggo.rf run scoreboard players operation %lcg.out eggo.rf %= #lcg.modulus eggo.rf


# if there is a modulus override, use it instead
execute if score #lcg.modulus eggo.rf = #lcg.modulus eggo.rf run scoreboard players operation %lcg.out eggo.rf %= #lcg.modulus eggo.rf
