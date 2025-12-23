CREATE TABLE student(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	age INT,
	grade VARCHAR(5)
);

INSERT INTO student (name, age, grade) VALUES
('Alice', 20, 'A'),
('Bob', 21, 'B'),
('Charlie', 19, 'A'),
('David', 22, 'C'),
('Eva', 20, 'B');

DO $$
DECLARE
    studentCursor SCROLL CURSOR FOR SELECT * FROM student ORDER BY id;
    rec RECORD;
BEGIN
    OPEN studentCursor;

    -- FIRST student
    FETCH FIRST FROM studentCursor INTO rec;
    RAISE NOTICE 'FIRST -> ID: %, Name: %, Age: %, Grade: %', rec.id, rec.name, rec.age, rec.grade;

    -- NEXT student
    FETCH NEXT FROM studentCursor INTO rec;
    RAISE NOTICE 'NEXT -> ID: %, Name: %, Age: %, Grade: %', rec.id, rec.name, rec.age, rec.grade;

    -- LAST student
    FETCH LAST FROM studentCursor INTO rec;
    RAISE NOTICE 'LAST -> ID: %, Name: %, Age: %, Grade: %', rec.id, rec.name, rec.age, rec.grade;

    -- PRIOR student
    FETCH PRIOR FROM studentCursor INTO rec;
    RAISE NOTICE 'PRIOR -> ID: %, Name: %, Age: %, Grade: %', rec.id, rec.name, rec.age, rec.grade;

    -- ABSOLUTE 3rd student
    FETCH ABSOLUTE 3 FROM studentCursor INTO rec;
    RAISE NOTICE 'ABSOLUTE 3 -> ID: %, Name: %, Age: %, Grade: %', rec.id, rec.name, rec.age, rec.grade;

    -- RELATIVE -2 students
    FETCH RELATIVE -2 FROM studentCursor INTO rec;
    RAISE NOTICE 'RELATIVE -2 -> ID: %, Name: %, Age: %, Grade: %', rec.id, rec.name, rec.age, rec.grade;

    CLOSE studentCursor;
END $$;
