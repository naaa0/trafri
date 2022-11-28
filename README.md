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
- has_many :user_groups
- has_many :groups, through: :user_groups
- has_many :messages


## groupsテーブル

| Column             | Type       | Options         |
| ------------------ | ---------- | --------------- |
| name               | string     | null: false     |
| prefecture_id      | integer    | null: false     |
| city               | string     | null: false     |
| introduction       | text       | null: false     |

### Association
- has_many :user_groups
- has_many :users, through: :user_groups
- has_many :messages


## user_groups テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| group  | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :group

### Association
- has_one :buyer
- belongs_to :user


## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     | null: false                    |
| user    | references | null: false, foreign_key: true |
| group   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :group
