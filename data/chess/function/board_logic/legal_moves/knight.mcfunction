$data modify storage chess:temp board_id set value $(board_id)
$data modify storage chess:temp cur_color set value $(color)

data modify storage chess:temp moves set value []


# get length
$execute store result score #len temp run data get storage chess:lookup knight."$(position)"
$data modify storage chess:temp positions set from storage chess:lookup knight."$(position)"

# set index
scoreboard players set #i temp 0
function chess:board_logic/legal_moves/computed_logic/computed_step