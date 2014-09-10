# API Document

これは[Forkwell](https://forkwell.com/)、[Forkwell Jobs](https://jobs.forkwell.com/)の非公式APIです。

求人情報を毎日スクレイピングしてDBに保存し、それをAPIで取得できるようにしてあります。

## dev

開発中のAPIです。APIの仕様が予告無く変更される可能性があります。


| Resource | Description |
-----------|-------------|
| [GET jobs](docs/api/dev/get/jobs) | 求人情報の検索APIです |
| [POST interests](docs/api/dev/post/interests) | ちょっと興味ある！を投稿するAPIです |
| [POST entries](docs/api/dev/post/entries) | 応募API |

## v1

安定板のAPIです。devのAPIが安定したらv1のapiとしてリリースします。

| Resource | Description |
-----------|-------------|
