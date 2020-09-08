# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| family_name        | string | null: false |
| first_name         | string | null: false |
| family_name_kana   | string | null: false |
| first_name_kana    | string | null: false |
| birthday           | date   | null: false |

### Association

- has_many :item dependent: :destroy
- has_many :transaction dependent: :destroy

## items テーブル

| Column             | Type       | Options                       |
| ------------------ | ---------- | ----------------------------- |
| name               | string     | null: false                   |
| description        | text       | null: false                   |
| price              | integer    | null: false                   |
| category_id        | integer    | null: false,foreign_key: true |
| item_condition_id  | integer    | null: false,foreign_key: true |
| postage_player_id  | integer    | null: false,foreign_key: true |
| prefecture_id      | integer    | null: false,foreign_key: true |
| preparation_day_id | integer    | null: false,foreign_key: true |
| user               | references | null: false,foreign_key: true |

### Association

- belongs_to :user dependent: :destroy
- has_one :transaction dependent: :destroy
- belongs_to_active_hash :category
- belongs_to_active_hash :item_condition
- belongs_to_active_hash :postage_player
- belongs_to_active_hash :prefecture
- belongs_to_active_hash :preparation_day


## Destinations テーブル
| Column             | Type       | Options     |
| ------------------ | ---------- | ----------- |
| post_code          | string     | null: false |
| prefecture_id      | integer    | null: false |
| city               | string     | null: false |
| address            | string     | null: false |
| building_name      | string     |             |
| phone_number       | string     | null: false |
| user               | references | null: false |
### Association

- belongs_to :transaction dependent: :destroy
- belongs_to_active_hash :prefecture

## item_item_purchases  テーブル

| Column             | Type       | Options                       |
| ------------------ | ---------- | ----------------------------- |
| user               | references | null: false,foreign_key: true |
| item               | references | null: false,foreign_key: true |

### Association

- belongs_to :user dependent: :destroy
- belongs_to :item dependent: :destroy
- has_one :destination dependent: :destroy
