--科目テーブル
CREATE TABLE subjects (
  id SERIAL PRIMARY KEY,
  name VARCHAR(32) NOT NULL,
  subject_type VARCHAR(16) NOT NULL,
  subject_group VARCHAR(16) NOT NULL,
  unit INTEGER NOT NULL,
  is_compulsory BOOLEAN NOT NULL DEFAULT FALSE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  deleted_at TIMESTAMP,
  updated_at TIMESTAMP
);