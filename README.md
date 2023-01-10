## docker起動
```bash
$ docker-compose up -d
```

## 使用中のポートとカチあった場合
* 使用中のポート確認
```bash
sudo lsof -P -i:{ポート番号}
```
* PIDを指定してプロセスをkill
```bash
sudo kill -9 {PID}
```

### Tips:Macの場合
AirPlayのレシーバーが5000番ポートを占有していることがあるらしい。  
`システム設定 > 検索`からAirPlayレシーバをオフにできる。