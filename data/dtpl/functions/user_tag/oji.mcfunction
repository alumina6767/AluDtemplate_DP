#> dtpl:user_tag/oji
# ネコおじのタグをつける
# @user
# @within function dtpl:user_tag/all

## タグとかスコアリセット
function dtpl:user_tag/reset_tag

## メンバー全員用タグ
tag @s add dtpl.user.dozle_sha

## 個人特定タグ
tag @s add dtpl.user.oji

## メンバー特定スコア
scoreboard players operation @s dtpl.user_id = Neko_Oji dtpl.user_id
