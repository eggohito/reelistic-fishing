#> eggo.rf:load
#
#   main load function for the `eggo.rf` namespace
#
# @within tag/function minecraft:load


# add objectives
scoreboard objectives add eggo.rf dummy


# load announcement
execute unless score #load eggo.rf = #load eggo.rf run tellraw @a {"text": "[Datapack \"eggo's Reelistic Fishing\" loaded]", "color": "green", "hoverEvent": {"action": "show_text", "contents": {"translate": "Version 1.0, from %s", "color": "gray", "with": [{"text": "https://github.com/eggopacks", "color": "blue", "underlined": true}]}}}

execute if score #load eggo.rf = #load eggo.rf run tellraw @a[tag = eggo.admin] {"text": "[Datapack \"eggo's Reelistic Fishing\" loaded]", "color": "gray", "italic": true, "hoverEvent": {"action": "show_text", "contents": {"translate": "Version 1.0, from %s", "color": "gray", "with": [{"text": "https://github.com/eggopacks", "color": "gray", "underlined": true}]}}}


# set score holders
function eggo.rf:lcg/setup

scoreboard players set #load eggo.rf 1


# initialize tick function
schedule function eggo.rf:tick 1t replace