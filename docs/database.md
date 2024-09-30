# DB

## campuses

| column_name | data_type   | is_nullable | column_default | foreigne_key | comment        |
| :---------- | :---------- | :---------- | :------------- | :----------- | :------------- |
| id          | integer     | NO          | AutoInclement  |              | 校舎 ID        |
| name        | varchar(16) | NO          |                |              | キャンパス名   |
| address     | varchar(32) | NO          |                |              | キャンパス住所 |

## students

| column_name | data_type   | is_nullable | column_default | foreign_key | comment                          |
| :---------- | :---------- | :---------- | :------------- | :---------- | :------------------------------- |
| id          | integer     | NO          | AutoInclement  |             | 学生 ID                          |
| name        | varchar(64) | NO          |                |             | 学生名                           |
| type        | varchar(16) | NO          |                |             | 学生種別(single,regular,alumnus) |
| campus_id   | integer     | NO          |                | campuses.id | 所属キャンパス ID                |
| section     | varchar(32) | YES         |                |             | セクション名                     |

## subjects

| column_name   | data_type   | is_nullable | column_default | foreign_key | comment      |
| :------------ | :---------- | :---------- | :------------- | :---------- | :----------- |
| id            | integer     | NO          | AutoInclement  |             | ID           |
| name          | varchar(32) | NO          |                |             | 科目名       |
| subject_type  | varchar(16) | NO          |                |             | 科目種別     |
| subject_group | varchar(16) | NO          |                |             | 科目グループ |
| unit          | integer     | NO          |                |             | 単位数       |
| is_compulsory | bool        | NO          |                |             | 必修区分     |

## student_subject

| column_name | data_type   | is_nullable | column_default | foreign_key | comment                   |
| :---------- | :---------- | :---------- | :------------- | :---------- | :------------------------ |
| id          | integer     | NO          | AutoInclement  |             | ID                        |
| student_id  | integer     | NO          |                | students.id | 学生 ID                   |
| subject_id  | integer     | NO          |                | subjects.id | 科目 ID                   |
| status      | varchar(16) | NO          | 'todo'         |             | 履修状況(todo,doing,done) |
