CREATE TABLE student_subject (
  student_id SERIAL NOT NULL,
  subject_id SERIAL NOT NULL,
  status VARCHAR(16) NOT NULL DEFAULT '受講前',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  deleted_at TIMESTAMP,
  updated_at TIMESTAMP
);