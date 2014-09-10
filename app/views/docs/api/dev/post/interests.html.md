# 「ちょっと興味ある！」 投稿API

[Forkwell Jobs](https://jobs.forkwell.com/) にログインし、求人に「ちょっと興味ある！」を送ります。

## API URL

POST api/dev/interests

## Parameters

|   |   |
|---|---|
| type (required) | ログインするSNSのtype (現状、"twitter"のみ実装) |
| username (required) | ログインするSNSのusername |
| password (required) | ログインするSNSのpassword |
| job_id (required) | 「ちょっと興味ある！」を送る求人ID |

## Example Request

|   |   |
|---|---|
| POST | api/dev/interests |
| POST Data | type=twitter&username=<screen_name>&password=<password>&job_id=308 |

## Example Response

```json
```
