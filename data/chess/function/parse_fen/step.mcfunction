# execute if data storage chess:parser {remaining:""} run return 1
data modify storage chess:parser char set string storage chess:parser remaining 0 1
data modify storage chess:parser remaining set string storage chess:parser remaining 1

function chess:parse_fen/process
execute unless data storage chess:parser {remaining:""} run function chess:parse_fen/step