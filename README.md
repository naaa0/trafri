# テーブル設計

## usersテーブル

| Column              | Type    | Options                   |
| ------              | ------- | ------------------------- |
| nickname            | string  | null: false               |
| email               | string  | null: false, unique: true |
| encrypted_password  | string  | null: false               |
| birthday            | date    | null: false               |
| age                 | integer | null: false               |


### Association
- belongs_to :user
- has_many :messages


## groupsテーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ---------------                |
| name               | string     | null: false                    |
| prefecture_id      | integer    | null: false                    |
| city               | string     | null: false                    |
| introduction       | text       | null: false                    |
| user               | references | null: false, foreign_key: true |


### Association
- has_many :groups
- has_many :messages

## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     | null: false                    |
| user    | references | null: false, foreign_key: true |
| group   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :group
