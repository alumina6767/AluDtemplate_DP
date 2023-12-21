#> dtpl:ranking/biggest_win/show_winner
# @public

data modify storage tmp winner set value []
execute as @a[scores={alu_util.ranking.output=1}] run function dtpl:ranking/biggest_win/set_title

## タイトルの表示
title @a reset
title @a title ""
title @a subtitle [{"text": "","color": "green"},{"nbt":"winner","storage": "tmp","interpret": true}," WIN!!"]

## 音
execute as @a at @s run playsound entity.player.levelup master @a ~ ~ ~ 1 0.5 0