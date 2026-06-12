# get length
$execute store result score #len temp run data get storage chess:lookup knight."$(position)"
$data modify storage chess:temp positions set from storage chess:lookup knight."$(position)"

# set index
scoreboard players set #i temp 0
function chess:board_logic/legal_moves/computed_logic/computed_step