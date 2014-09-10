# 「ちょっと興味ある！」 投稿API

[Forkwell Jobs](https://jobs.forkwell.com/) にログインし、求人に「ちょっと興味ある！」を送ります。

## API URL

POST api/dev/jobs

## Parameters

|   |   |
|---|---|
| q (optional)    | [activerecord-hackery/ransack](https://github.com/activerecord-hackery/ransack)のquery構文が使えます |
| page (optional) | ページ番号を指定して求人を取得します |

## Example Request

|   |   |
|---|---|
| POST | api/dev/jobs |
| POST Data | type=twitter&username=<screen_name>&password=<password>&job_id=308 |

## Example Response

```json
```
