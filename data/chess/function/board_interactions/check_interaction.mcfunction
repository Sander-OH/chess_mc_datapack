execute if data entity @s attack run tellraw @a [{"text":"Attacked: "},{"score":{"name":"@s","objective":"board_position"}}]
execute if data entity @s interaction run tellraw @a [{"text":"Interacted with: "},{"score":{"name":"@s","objective":"board_position"}}]

data modify entity @s attack set value 0
data modify entity @s interaction set value 0