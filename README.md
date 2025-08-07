# 💻 Task 3 - SQL Developer Internship

## 📌 Task Objective

The goal of this task was to practice and demonstrate SQL skills by writing basic `SELECT` queries to extract and filter data from one or more tables using:

- `SELECT`
- `WHERE`, `AND`, `OR`
- `LIKE`, `BETWEEN`
- `ORDER BY`, `LIMIT`

---

## 🛠 Tools Used

- MySQL Workbench  
---

## 🧾 Tables Used

### 🔹 `departments` Table

| dept_id | dept_name  |
|---------|------------|
| 101     | HR         |
| 102     | IT         |
| 103     | Finance    |
| 104     | Sales      |
| 105     | Marketing  |

### 🔹 `Employees` Table

| emp_id | name            | age | gender | dept_id | salary |
|--------|-----------------|-----|--------|----------------|--------|
| 1      | Amit Sharma     | 28  | M      | 101            | 52000  |
| 2      | Priya Verma     | 26  | F      | 102            | 60000  |
| ...    | ...             | ... | ...    | ...            | ...    |
| 20     | Radhika Pandey  | 28  | F      | 105            | 58000  |

---

## ✅ Key SQL Queries Performed

<details>
<summary>1. Display all employees</summary>

```sql
SELECT * FROM Employees;
```
📸 Output: <img width="629" height="473" alt="image" src="https://github.com/user-attachments/assets/6a29a287-1f1b-4598-bd8b-0eb3729a03b0" />

</details>

<details>
<summary>2. Display all departments</summary>

```sql
SELECT * FROM departments;
```
📸 Output: 
<img width="285" height="239" alt="image" src="https://github.com/user-attachments/assets/31491c65-03cc-430c-b401-40eb10ed54e6" />

</details>

<details>
<summary>3. List names and salaries of Employees</summary>

```sql
SELECT name, salary FROM Employees;
```
📸 Output: 
<img width="288" height="525" alt="image" src="https://github.com/user-attachments/assets/85dc0939-d546-4175-b00d-0f19c697051b" />

</details>

<details>
<summary>4. Employees older than 30</summary>

```sql
SELECT * FROM Employees WHERE age > 30;
```
📸 Output: 
<img width="295" height="270" alt="image" src="https://github.com/user-attachments/assets/22aa1137-898a-4ae3-a00b-a7cd22f29be4" />
</details>


<details>
<summary>5. Female employees</summary>

```sql
SELECT * FROM Employees WHERE gender = 'F';
```
📸 Output: 
<img width="579" height="356" alt="image" src="https://github.com/user-attachments/assets/b1b7e33a-f167-4c13-a288-67ced4f459bd" />

</details>

<details>
<summary>... View all remaining queries and screenshots</summary>

🔗 See all 20 queries in [Task3.sql](SQL/Task3.sql)  
📁 View outputs in [screenshots/](Screenshots/)

</details>

---

## 📚 Learning Outcome

- Gained hands-on experience with SQL `SELECT` queries.
- Learned how to filter and sort data.
- Applied JOINs to extract meaningful combined data.
- Understood SQL syntax, logic, and debugging.

---

## 🧑‍💻 Author

**SAQLAINMUSHTAK MUJAWAR**  
SQL Enthusiast  
[GitHub Profile](https://github.com/Saqlain9459)
