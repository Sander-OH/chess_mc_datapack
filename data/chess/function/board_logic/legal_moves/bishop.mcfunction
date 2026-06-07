$data modify storage chess:temp board_id set value $(board_id)
$data modify storage chess:temp cur_color set value $(color)

data modify storage chess:temp moves set value []


# NE
# get length
$execute store result score #len temp run data get storage chess:lookup bishop_ne."$(position)"
$data modify storage chess:temp positions set from storage chess:lookup bishop_ne."$(position)"

# set index
scoreboard players set #i temp 0
function chess:board_logic/legal_moves/sliding_logic/sliding_step



# NW
# get length
$execute store result score #len temp run data get storage chess:lookup bishop_nw."$(position)"
$data modify storage chess:temp positions set from storage chess:lookup bishop_nw."$(position)"

# set index
scoreboard players set #i temp 0
function chess:board_logic/legal_moves/sliding_logic/sliding_step



# SE
# get length
$execute store result score #len temp run data get storage chess:lookup bishop_se."$(position)"
$data modify storage chess:temp positions set from storage chess:lookup bishop_se."$(position)"

# set index
scoreboard players set #i temp 0
function chess:board_logic/legal_moves/sliding_logic/sliding_step



# SW
# get length
$execute store result score #len temp run data get storage chess:lookup bishop_sw."$(position)"
$data modify storage chess:temp positions set from storage chess:lookup bishop_sw."$(position)"

# set index
scoreboard players set #i temp 0
function chess:board_logic/legal_moves/sliding_logic/sliding_step