#> alu_util:save_position/save/
# 今いる場所をストレージに保存
# @public

execute store result storage alu_util:tmp user_id int 1 run scoreboard players get @s alu_util.user_id
function alu_util:save_position/save/2 with storage alu_util:tmp
