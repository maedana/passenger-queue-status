Passengerのqueue蓄積スクリプト
=================================

## これは何?
`rvmsudo passenger-status`の実行結果をパースしてファイルに蓄積するためのシェルスクリプト。crontabに設定して定期実行することでpassengerのqueueが溜まっていないかどうかを確認し、チューニングに役立ててる目的で使う。

## インストール
```
git clone https://github.com/maedana/passenger-queue-status
```

## 使い方
```
path-to-install-dir/record_passenger_status_queue.sh
```

上記コマンドを実行すると、`/tmp/captured_passenger_status.csv`に`rvmsudo passenger-status`実行時の結果のDateとRequests in queueの値がカンマ区切りで蓄積されていく。例えば出力が以下の通りだった場合

```
Version : x.x.xx
Date    : 2017-06-13 17:17:43 +0900
Instance: 9999
----------- General information -----------
Max pool size : 10
Processes     : 1
Requests in top-level queue : 0

----------- Application groups -----------
/xxx/yyy#default:
  App root: /xxx/yyy
  Requests in queue: 1
  * PID: 15629   Sessions: 0       Processed: 41      Uptime: 12m 37s
    CPU: 0%      Memory  : 202M    Last used: 2m 23s ago
```

`/tmp/captured_passenger_status.csv`に以下のように記録される
```
2017-06-13 17:17:43,1
```
