#> dtpl:mob_catch/then/as_looking_entity
# as 見ているエンティティ
# @within function dtpl:mob_catch/then/search_looking_at

## エンティティIDの特定
function alu_util:get_entity_id/
data modify storage tmp type set from storage alu_util: return

## 探索用のタグを削除
tag @s remove dtpl.check_looking_at_this

## NBTのコピー 無駄なデータは消す
data modify storage tmp spawn_egg_data set from entity @s
data remove storage tmp spawn_egg_data.Motion
data remove storage tmp spawn_egg_data.Pos
data remove storage tmp spawn_egg_data.Rotation
data remove storage tmp spawn_egg_data.UUID
data remove storage tmp spawn_egg_data.Attributes
data remove storage tmp spawn_egg_data.LeftHanded
data remove storage tmp spawn_egg_data.OnGround
data remove storage tmp spawn_egg_data.Air
data remove storage tmp spawn_egg_data.Health
data remove storage tmp spawn_egg_data.FallDistance
data remove storage tmp spawn_egg_data.Brain
data remove storage tmp spawn_egg_data.HurtByTimestamp
data remove storage tmp spawn_egg_data.HurtTime
data remove storage tmp spawn_egg_data.Fire
data remove storage tmp spawn_egg_data.PortalCooldown
data remove storage tmp spawn_egg_data.AngerTime
data remove storage tmp spawn_egg_data.DeathTime
data remove storage tmp spawn_egg_data.AbsorptionAmount
data remove storage tmp spawn_egg_data.Sitting
data remove storage tmp spawn_egg_data.InLove
data remove storage tmp spawn_egg_data.FallFlying


## スポーンエッグの召喚
summon item ~ ~ ~ {Tags:["dtpl.mob_catch.new_egg"],Item:{id:"minecraft:egg",Count:1b},Motion:[0.0,0.3,0.0],PickupDelay:2}
execute as @e[type=item,tag=dtpl.mob_catch.new_egg,dx=0] run function dtpl:mob_catch/then/summon_spawn_egg with storage tmp

## 音
playsound entity.chicken.egg master @a ~ ~ ~ 1.0 1.0 0.0

## パーティクル
particle end_rod ~ ~ ~ 0 0 0 0.1 20 force

## 元エンティティを消す
tp @s[type=!ender_dragon] ~ -10000 ~
data merge entity @s[type=!ender_dragon] {Health:0.0f}

## エンダードラゴンなぜか死なない時があるので近くのを殺す
execute if entity @s[type=ender_dragon] run kill @e[type=ender_dragon,distance=..10]

