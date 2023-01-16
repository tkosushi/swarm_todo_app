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

## overlayネットワークの構築
本環境では、複数のホストで稼働しているDockerをDocker Swarmでオーケストレーションする際の練習として  
dind(docker in docker)環境で構成されている。
dind内のdocker群がお互いに通信可能になるよう、overlayネットワークを構築する。
```bash
$ docker container exec -it manager \ docker network create --driver=overlay --attachable todoapp
```