scoreboard players set @s preview_enabled 1
execute at @s run summon block_display ~ ~ ~ {Tags:["chess_preview"],block_state:{Name:"minecraft:iron_block"}}
scoreboard players set @s toggle_preview 0