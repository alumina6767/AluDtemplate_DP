#> dtpl:title/count_down_dela/
# 太字でカウントダウン
# @public

## カウントダウン
title @a reset
title @a clear

function dtpl:title/count_down_dela/3
schedule function dtpl:title/count_down_dela/2 1s
schedule function dtpl:title/count_down_dela/1 2s
schedule function dtpl:title/count_down_dela/0 3s
