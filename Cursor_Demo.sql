SELECT tablename FROM pg_tables WHERE schemaname = 'public';

CREATE TABLE employee(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	salary INT
);

INSERT INTO employee (name, salary) VALUES
('Alice', 50000),
('Bob', 60000),
('Charlie', 55000);

SELECT * FROM employee;

DO $$
DECLARE
    myCursor CURSOR FOR SELECT * FROM employee;
    rec RECORD;
BEGIN
    OPEN myCursor;
    
    -- Fetch each row
    LOOP
        FETCH myCursor INTO rec;
        EXIT WHEN NOT FOUND;
        RAISE NOTICE 'ID: %, Name: %, Salary: %', rec.id, rec.name, rec.salary;
    END LOOP;
    
    CLOSE myCursor;
END $$;

