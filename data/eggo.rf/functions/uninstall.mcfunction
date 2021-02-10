#> eggo.rf:uninstall
#
#   remove residual data from this datapack, and disable it
#
# @user


# disable announcement
tellraw @a {"text": "[Datapack \"eggo's Reelistic Fishing\" disabled]", "color": "red", "hoverEvent": {"action": "show_text", "contents": {"translate": "Version 1.0, from %s", "color": "gray", "with": [{"text": "https://github.com/eggopacks", "color": "blue", "underlined": true}]}}}


# remove objectives
scoreboard objectives remove eggo.rf


# disable datapack
datapack disable "file/reelistic_fishing_vDEV.DP"

datapack disable "file/reelistic_fishing_v1.0.DP.zip"