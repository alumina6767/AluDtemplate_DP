#> dtpl:ranking/biggest_win/set_title
# タイトルを生成
# @within function dtpl:ranking/biggest_win/show_winner

## スペース
execute if data storage tmp winner[0] run data modify storage tmp winner append value " "

## 勝者の名前を追加
function dtpl:user_tag/get_user_name
data modify storage tmp winner append from storage tmp return