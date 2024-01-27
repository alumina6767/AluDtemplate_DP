#> alu_util:villager/set_trade/
# 手に持っているシュルカーの中身から取引を生成
# 1段目 代金
# 2段目 代金B
# 3段目 商品
# @internal
# @user

## 実行者の変更
execute as @e[type=villager,sort=nearest,limit=1] run function alu_util:villager/set_trade/as_villager
