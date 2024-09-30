-- 校舎テーブル
CREATE TABLE campuses (
  id SERIAL PRIMARY KEY,
  name VARCHAR(16) NOT NULL,
  address VARCHAR(32) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  deleted_at TIMESTAMP,
  updated_at TIMESTAMP
);
COMMENT ON COLUMN campuses.id IS '校舎ID';
COMMENT ON COLUMN campuses.name IS '校舎名';
COMMENT ON COLUMN campuses.address IS '住所';