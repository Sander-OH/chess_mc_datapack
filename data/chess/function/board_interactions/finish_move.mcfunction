# increment number of turns
$execute store result score #cur_turn temp run data get storage chess:boards boards.$(board_id).turns
scoreboard players operation #cur_turn temp += #one const
$execute store result storage chess:boards boards.$(board_id).turns int 1 run scoreboard players get #cur_turn temp

# Flip to opponents turn
$execute store result score #cur_color temp run data get storage chess:boards boards.$(board_id).color
$execute if score #cur_color temp matches 1 run data modify storage chess:boards boards.$(board_id).color set value 2
$execute if score #cur_color temp matches 2 run data modify storage chess:boards boards.$(board_id).color set value 1

# Temporary as codebase is refactored
execute store result score #cur_color temp run data get storage chess:temp cur_color
execute if score #cur_color temp matches 1 run data modify storage chess:temp cur_color set value 2
execute if score #cur_color temp matches 2 run data modify storage chess:temp cur_color set value 1
say switching