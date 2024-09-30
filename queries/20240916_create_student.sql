--受講生テーブル
CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  name VARCHAR(16) NOT NULL,
  type VARCHAR(8) NOT NULL,
  campus_id SERIAL NOT NULL,
  section VARCHAR(8),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  deleted_at TIMESTAMP,
  updated_at TIMESTAMP
);