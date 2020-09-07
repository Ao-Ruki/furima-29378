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
| introduction       | text   |             |
| family_name        | string | null: false |
| first_name         | string | null: false |
| family_name_kana   | string | null: false |
| first_name_kana    | string | null: false |
| birth_year         | date   | null: false |
| birth_month        | date   | null: false |
| birth_day          | date   | null: false |

### Association

- has_many :item dependent: :destroy
- belongs_to :destination dependent: :destroy
- belongs_to :card dependent: :destroy

## items テーブル

| Column             | Type       | Options     |
| ------------------ | ---------- | ----------- |
| name               | string     | null: false |
| description        | text       | null: false |
| price              | integer    | null: false |
| category           | references | null: false |
| item_condition     | references | null: false |
| postage_player     | references | null: false |
| prefecture         | integer    | null: false |
| preparation        | references | null: false |
| user               | references | null: false |

### Association

- belongs_to :user dependent: :destroy
- has_many :image dependent: :destroy

## Destinations テーブル
| Column             | Type       | Options     |
| ------------------ | ---------- | ----------- |
| post_code          | integer    | null: false |
| prefecture         | integer    | null: false |
| city               | string     | null: false |
| address            | string     | null: false |
| building_name      | string     | null: false |
| phone_number       | integer    | null: false |
| user               | references | null: false |

### Association

- belongs_to :user

## cards テーブル

| Column             | Type       | Options     |
| ------------------ | ---------- | ----------- |
| card_number        | integer    | null: false |
| expiration_year    | integer    | null: false |
| expiration_month   | integer    | null: false |
| security_code      | integer    | null: false |
| user               | references | null: false |

### Association

- belongs_to :user

## images テーブル

| Column             | Type       | Options     |
| ------------------ | ---------- | ----------- |
| image              | string     | null: false |
| item               | references | null: false |

### Association

- belongs_to :item