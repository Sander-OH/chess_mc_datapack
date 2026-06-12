# get length
$execute store result score #len temp run data get storage chess:lookup king."$(position)"
$data modify storage chess:temp positions set from storage chess:lookup king."$(position)"

# set index
scoreboard players set #i temp 0
function chess:board_logic/legal_moves/computed_logic/computed_step