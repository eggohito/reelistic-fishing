#> eggo.rf:list/default
#
#   this list is used for the default fishing loot pool
#
# @within function eggo.rf:tick


# List of fishies
execute if entity @s[nbt = {Item: {tag: {eggo: {rf: {name: "cod"}}}}}] run summon cod ~ ~1 ~ {Tags: ["eggo.rf.entity.motion_apply"], Air: 100}

execute if entity @s[nbt = {Item: {tag: {eggo: {rf: {name: "salmon"}}}}}] run summon salmon ~ ~1 ~ {Tags: ["eggo.rf.entity.motion_apply"], Air: 100}

execute if entity @s[nbt = {Item: {tag: {eggo: {rf: {name: "pufferfish"}}}}}] run summon pufferfish ~ ~1 ~ {Tags: ["eggo.rf.entity.motion_apply"], Air: 100}

execute if entity @s[nbt = {Item: {tag: {eggo: {rf: {name: "tropical_fish"}}}}}] run summon tropical_fish ~ ~1 ~ {Tags: ["eggo.rf.entity.motion_apply", "eggo.rf.entity.variant_set"], Air: 100}


# Apply randomized variant for tropical fish
execute as @e[type = tropical_fish, tag = eggo.rf.entity.variant_set] run function eggo.rf:misc/variant_set