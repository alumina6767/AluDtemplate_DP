#> dtpl:mob_catch/then/search_looking_at
# 見ているエンティティを特定する
# @within function dtpl:mob_catch/then/

## このエンティティを見ているか
tag @s add dtpl.check_looking_at_this
    execute if entity @p[tag=dtpl.mob_catch.user,predicate=dtpl:check_looking_at_this] at @s run function dtpl:mob_catch/then/as_looking_entity
tag @s remove dtpl.check_looking_at_this
