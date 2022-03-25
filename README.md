# README

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |
| name               | string | null: false |

### Association

has_many :posts
has_many :comments

## posts テーブル

| Column                 | Type     | Options      |
| ---------------------- | -------- | ------------ |
| team_name              | string   | null: false  |
| sport_name_id          | integer  | null: false  |
| date_id                | integer  | null: false  |
| time_id                | integer  | null: false  |
| prefecture_id          | integer  | null: false  |
| place                  | text     | null: false  |
| team_introduction      | text     | null: false  |
| level                  | integer  |              |
| user               | references | null: false, foreign_key: true |

### Association

has_many :comments
belongs_to :user

| Column                 | Type     | Options      |
| ---------------------- | -------- | ------------ |
| team_name              | string   | null: false  |
| post                   | references | null: false, foreign_key: true |
| user                   | references | null: false, foreign_key: true |