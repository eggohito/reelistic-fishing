#> eggo.rf:misc/variant_set
#
#   applies a random variant to a tropical fish
#
# @within function eggo.rf:list/default


# Override #eg.rf.lcg_modulus, and do LCG
scoreboard players set #lcg.modulus eggo.rf 21

function eggo.rf:lcg/random


# Generate Variant values
scoreboard players reset %tropical_variant eggo.rf

execute if score %lcg.out eggo.rf matches 0 run scoreboard players add %tropical_variant eggo.rf 65536

execute if score %lcg.out eggo.rf matches 1 run scoreboard players add %tropical_variant eggo.rf 917504

execute if score %lcg.out eggo.rf matches 2 run scoreboard players set %tropical_variant eggo.rf 918273

execute if score %lcg.out eggo.rf matches 3 run scoreboard players set %tropical_variant eggo.rf 918529

execute if score %lcg.out eggo.rf matches 4 run scoreboard players set %tropical_variant eggo.rf 16778497

execute if score %lcg.out eggo.rf matches 5 run scoreboard players set %tropical_variant eggo.rf 50660352

execute if score %lcg.out eggo.rf matches 6 run scoreboard players set %tropical_variant eggo.rf 50726144

execute if score %lcg.out eggo.rf matches 7 run scoreboard players set %tropical_variant eggo.rf 67108865

execute if score %lcg.out eggo.rf matches 8 run scoreboard players set %tropical_variant eggo.rf 67110144

execute if score %lcg.out eggo.rf matches 9 run scoreboard players set %tropical_variant eggo.rf 67371265

execute if score %lcg.out eggo.rf matches 10 run scoreboard players set %tropical_variant eggo.rf 67764993

execute if score %lcg.out eggo.rf matches 11 run scoreboard players set %tropical_variant eggo.rf 101253888

execute if score %lcg.out eggo.rf matches 12 run scoreboard players set %tropical_variant eggo.rf 117441025

execute if score %lcg.out eggo.rf matches 13 run scoreboard players set %tropical_variant eggo.rf 117441280

execute if score %lcg.out eggo.rf matches 14 run scoreboard players set %tropical_variant eggo.rf 117441536

execute if score %lcg.out eggo.rf matches 15 run scoreboard players set %tropical_variant eggo.rf 117506305

execute if score %lcg.out eggo.rf matches 16 run scoreboard players set %tropical_variant eggo.rf 117899265

execute if score %lcg.out eggo.rf matches 17 run scoreboard players set %tropical_variant eggo.rf 118161664

execute if score %lcg.out eggo.rf matches 18 run scoreboard players set %tropical_variant eggo.rf 134217984

execute if score %lcg.out eggo.rf matches 19 run scoreboard players set %tropical_variant eggo.rf 185008129

execute if score %lcg.out eggo.rf matches 20 run scoreboard players set %tropical_variant eggo.rf 234882305

execute if score %lcg.out eggo.rf matches 21 run scoreboard players set %tropical_variant eggo.rf 235340288


# store the value of the `%tropical_variant` score holder to the entity's `Variant` tag
execute store result entity @s Variant int 1 run scoreboard players get %tropical_variant eggo.rf