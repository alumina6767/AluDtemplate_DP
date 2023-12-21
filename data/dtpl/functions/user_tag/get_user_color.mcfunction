#> dtpl:user_tag/get_user_color
# 演者ごとの色を取得する
# @public

## 色の設定
data modify storage tmp return set value '{"text":"","color":"white"}'
execute as @s[predicate=dtpl:user_id/doz] run data modify storage tmp return set value '{"text":"","color":"#e70012"}'
execute as @s[predicate=dtpl:user_id/bon] run data modify storage tmp return set value '{"text":"","color":"#733990"}'
execute as @s[predicate=dtpl:user_id/qnl] run data modify storage tmp return set value '{"text":"","color":"#fcc72b"}'
execute as @s[predicate=dtpl:user_id/ora] run data modify storage tmp return set value '{"text":"","color":"#39beee"}'
execute as @s[predicate=dtpl:user_id/men] run data modify storage tmp return set value '{"text":"","color":"#eb6b98"}'
execute as @s[predicate=dtpl:user_id/oji] run data modify storage tmp return set value '{"text":"","color":"#828282"}'

