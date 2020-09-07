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
| family_name        | string | null: false |
| first_name         | string | null: false |
| family_name_kana   | string | null: false |
| first_name_kana    | string | null: false |
| birth_day          | date   | null: false |

### Association

- has_many :item dependent: :destroy

## items テーブル

| Column             | Type       | Options     |
| ------------------ | ---------- | ----------- |
| name               | string     | null: false |
| description        | text       | null: false |
| price              | integer    | null: false |
| category           | integer    | null: false |
| item_condition     | integer    | null: false |
| postage_player     | integer    | null: false |
| prefecture         | integer    | null: false |
| preparation        | references | null: false |
| user               | references | null: false |

### Association

- belongs_to :user dependent: :destroy

## Destinations テーブル
| Column             | Type       | Options     |
| ------------------ | ---------- | ----------- |
| post_code          | string     | null: false |
| prefecture         | integer    | null: false |
| city               | string     | null: false |
| address            | string     | null: false |
| building_name      | string     |             |
| phone_number       | string     | null: false |

## Transactions テーブル

| Column             | Type       | Options     |
| ------------------ | ---------- | ----------- |
| user               | references | null: false |
| item               | references | null: false |
