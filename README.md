## users テーブル
| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false, unique: true |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false, unique: true |
| last_name          | string | null: false |
| first_name         | string | null: false |
| last_name_kana     | string | null: false |
| first_name_kana    | string | null: false |
| birthday           | date   | null: false |


## items テーブル
| Column           | Type      | Options     |
| ---------------- | --------- | ----------- |
| user             | reference | null: false, foreign_key: true |
| category_id      | integer   | null: false |
| item_statue_id   | integer   | null: false |
| shipping_cost_id | integer   | null: false |
| prefecture_id    | integer   | null: false |
| text             | text      | null: false |
| shipping_date_id | integer   | null: false |
| price            | integer   | null: false |

## orders テーブル
| Column    | Type      | Options     |
| --------- | --------- | ----------- |
| user             | reference | null: false, foreign_key: true |
| item             | reference | null: false, foreign_key: true |

## payments テーブル
| Column        | Type   | Options     |
| --------------| ------ | ----------- |
| orders        | reference | null: false, foreign_key: true |
| postcode      | string | null: false, unique: true |
| prefecture_id | integer | null: false, unique: true |
| city          | string | null: false |
| block         | string | null: false |
| building      | string | null: false |
| phone_number  | string   | null: false |


## comments テーブル
| Column    | Type      | Options     |
| --------- | --------- | ----------- |
| text      | text      | null: false |
| user      | reference | null: false, foreign_key: true |
| item      | reference | null: false, foreign_key: true |
