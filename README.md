Windowsを OhmGraphite + (prometheus + Grafana) on Docker/WSL でモニタリングする一式

参考ページ: https://ika-cyan.hatenadiary.com/entry/2022/08/26/172108

### OhmGraphite

https://github.com/nickbabcock/OhmGraphite

インストール手順は install_ohmgraphite.ps1

```
実行方法(on WSL)

$ powershell.exe -ExecutionPolicy Bypass -File ./install_ohmgraphite.ps1
```

### Prometheus + Grafana

```
$ docker-compose up -d
```

