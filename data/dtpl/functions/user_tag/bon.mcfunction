#> dtpl:user_tag/bon
# ぼんじゅうるのタグをつける
# @user
# @within function dtpl:user_tag/all

## タグとかスコアリセット
function dtpl:user_tag/reset_tag

## メンバー全員用タグ
tag @s add dtpl.user.dozle_sha

## 個人特定タグ
tag @s add dtpl.user.bon

## メンバー特定スコア
scoreboard players operation @s dtpl.user_id = bonj55 dtpl.user_id
