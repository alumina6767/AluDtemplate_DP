#> dtpl:user_tag/get_user_name
# タグから演者の名前を取得する
# @public

## 初期化
data modify storage tmp return set value ""

## 場合分け
execute as @s[predicate=dtpl:user_id/doz] run data modify storage tmp return set value "ドズル"
execute as @s[predicate=dtpl:user_id/bon] run data modify storage tmp return set value "ぼんじゅうる"
execute as @s[predicate=dtpl:user_id/qnl] run data modify storage tmp return set value "おんりー"
execute as @s[predicate=dtpl:user_id/ora] run data modify storage tmp return set value "おらふくん"
execute as @s[predicate=dtpl:user_id/men] run data modify storage tmp return set value "おおはらMEN"
execute as @s[predicate=dtpl:user_id/oji] run data modify storage tmp return set value "ネコおじ"

## 値を返す
data get storage tmp return
