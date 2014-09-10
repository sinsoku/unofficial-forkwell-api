# 応募API

[Forkwell Jobs](https://jobs.forkwell.com/) にログインし、求人に応募します。

## API URL

POST api/dev/entries

## Parameters

|   |   |
|---|---|
| type (required) | ログインするSNSのtype (現状、"twitter"のみ実装) |
| username (required) | ログインするSNSのusername |
| password (required) | ログインするSNSのpassword |
| job_id (required) | 応募する求人ID |
| intendment (required) | エントリーの意図。`join_soon`, `will_join`, `talk_only`のどれかの値 |
| salary (optional) | 希望年収 |

## Example Request

|   |   |
|---|---|
| POST | api/dev/entries |
| POST Data | `type=twitter&username=<screen_name>&password=<password>&job_id=308&intendment=join_soon&salary=1000` |

## Example Response

```json
```
