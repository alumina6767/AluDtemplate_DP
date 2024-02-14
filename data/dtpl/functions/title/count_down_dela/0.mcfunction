#> dtpl:title/count_down_dela/0
# 0
# @within function dtpl:title/count_down_dela/

## タイトル
title @a times 10 20 20
title @a title [{"text":"- ","color":"yellow","font": "dtpl:dela"},{"text":"START!!","color":"red"},{"text":" -","color":"yellow"}]

## 音
execute as @a at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 1 1 1
