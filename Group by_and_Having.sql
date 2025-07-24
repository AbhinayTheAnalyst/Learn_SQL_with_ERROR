
🔍 GROUP BY in SQL — 0 se Advanced

🧠 1. GROUP BY kya hota hai?

GROUP BY clause SQL mein data ko similar values ke group mein divide karta hai. Iska use aggregation ke sath hota hai (like: SUM(), COUNT(), AVG(), MAX(), MIN()).


---

📘 2. Basic Example:

SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;

🗣 Matlab: Har department mein kitne employees hain, ye count karega.


---

🔧 3. With SUM():

SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

🗣 Matlab: Har department ka total salary nikalega.


---

📌 4. With WHERE and GROUP BY:

SELECT department, AVG(salary) AS avg_salary
FROM employees
WHERE salary > 30000
GROUP BY department;

🗣 Matlab: Sirf unhi logon ko count karega jinki salary 30000 se zyada hai.


---

⚙️ 5. GROUP BY with HAVING (advanced filter):

SELECT department, COUNT(*) AS total
FROM employees
GROUP BY department
HAVING COUNT(*) > 5;

🗣 Matlab: Sirf un departments ko dikhana jahan 5 se zyada employees hain.


---

---

📝 README.md :

# 📊 SQL Employee Insights Project

This project contains SQL queries to analyze an employee database using GROUP BY, HAVING, and aggregate functions like COUNT, SUM, AVG, etc.

## 🔍 Key Concepts

- GROUP BY with COUNT, SUM, AVG
- WHERE vs HAVING
- Filtering with salary conditions
- Real-world business insights using SQL

## 📦 Sample Query

```sql
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 40000;

🧠 Learnings

How to group and summarize data

Difference between WHERE and HAVING

Writing clean and production-grade SQL


---

## 🧠 BONUS: Professional Tips

| Concept      | Description |
|--------------|-------------|
| `WHERE`      | Filter rows **before** GROUP BY |
| `HAVING`     | Filter rows **after** aggregation |
| `ORDER BY`   | Use after GROUP BY to sort results |
| `AS`         | Alias for readability (e.g., `COUNT(*) AS total`) |

---

## 📈 Sample Dataset:

```sql
CREATE TABLE employees (
    id INT,
    name VARCHAR(100),
    department VARCHAR(50),
    salary INT
);

INSERT INTO employees VALUES
(1, 'Raj', 'IT', 50000),
(2, 'Simran', 'HR', 45000),
(3, 'Aman', 'IT', 60000),
(4, 'Priya', 'Finance', 55000),
(5, 'Ravi', 'HR', 42000),
(6, 'Neha', 'Finance', 48000);
