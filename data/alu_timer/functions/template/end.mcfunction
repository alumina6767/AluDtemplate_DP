#> alu_timer:template/end
# stop
# @public

bossbar set timer.template visible false
scoreboard players set power timer.template 0

## タイトル
title @a title [{"text":"- ","color":"yellow"},{"text":"終了","color":"red","bold":true},{"text":" -","color":"yellow"}]
