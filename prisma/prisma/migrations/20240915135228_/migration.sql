-- CreateTable
CREATE TABLE "campuses" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(16) NOT NULL,
    "address" VARCHAR(32) NOT NULL,

    CONSTRAINT "campuses_pkey" PRIMARY KEY ("id")
);
COMMENT ON COLUMN campuses.id IS '校舎ID';
COMMENT ON COLUMN campuses.name IS '校舎名';
COMMENT ON COLUMN campuses.address IS '住所';

-- CreateTable
CREATE TABLE "students" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(64) NOT NULL,
    "type" VARCHAR(16) NOT NULL,
    "campus_id" INTEGER NOT NULL,
    "section" VARCHAR(32),

    CONSTRAINT "students_pkey" PRIMARY KEY ("id")
);
COMMENT ON COLUMN students.id IS '生徒ID';
COMMENT ON COLUMN students.name IS '生徒名';
COMMENT ON COLUMN students.type IS '生徒タイプ';
COMMENT ON COLUMN students.campus_id IS '校舎ID';
COMMENT ON COLUMN students.section IS '所属セクション';

-- CreateTable
CREATE TABLE "subjects" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(32) NOT NULL,
    "subject_type" VARCHAR(16) NOT NULL,
    "subject_group" VARCHAR(16) NOT NULL,
    "unit" INTEGER NOT NULL,
    "is_compulsory" BOOLEAN NOT NULL,

    CONSTRAINT "subjects_pkey" PRIMARY KEY ("id")
);
COMMENT ON COLUMN subjects.id IS '科目ID';
COMMENT ON COLUMN subjects.name IS '科目名';
COMMENT ON COLUMN subjects.subject_type IS '科目タイプ';
COMMENT ON COLUMN subjects.subject_group IS '科目グループ';
COMMENT ON COLUMN subjects.unit IS '単位数';
COMMENT ON COLUMN subjects.is_compulsory IS '必修科目フラグ';

-- CreateTable
CREATE TABLE "student_subject" (
    "id" SERIAL NOT NULL,
    "student_id" INTEGER NOT NULL,
    "subject_id" INTEGER NOT NULL,
    "status" VARCHAR(16) NOT NULL DEFAULT 'todo',

    CONSTRAINT "student_subject_pkey" PRIMARY KEY ("id")
);
COMMENT ON COLUMN student_subject.id IS '生徒科目ID';
COMMENT ON COLUMN student_subject.student_id IS '生徒ID';
COMMENT ON COLUMN student_subject.subject_id IS '科目ID';
COMMENT ON COLUMN student_subject.status IS '状態';
