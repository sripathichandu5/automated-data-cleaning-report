# 🚀 Automated Data Cleaning & Report Generation

This project automates the process of extracting employee data from a MySQL database, performing data cleaning using Python (Pandas & NumPy), and exporting structured Excel reports with department-wise salary summaries. It simplifies the workflow by reducing manual effort, ensuring clean, accurate data, and providing meaningful insights.

---

## 📝 Table of Contents

- [Project Overview](#project-overview)
- [Technologies Used](#technologies-used)
- [Folder Structure](#folder-structure)
- [Setup Instructions](#setup-instructions)
- [How It Works](#how-it-works)
- [Output Example](#output-example)
- [License](#license)

---

## 🌟 Project Overview

- Connects to a MySQL database using SQLAlchemy + PyMySQL.
- Reads employee data into a Pandas DataFrame.
- Cleans missing data:
  - Fills missing employee names, departments, emails, and salary.
- Exports cleaned data into an Excel file with:
  - Cleaned Employee Data.
  - Department-wise Salary Summary.
- Automatically creates output folder structure.

---

## 🛠️ Technologies Used

- **Python 3**
- **Pandas**
- **NumPy**
- **SQLAlchemy**
- **PyMySQL**
- **XlsxWriter**
- **MySQL Database**

---

## 📂 Folder Structure

```
Automated-Data-Cleaning-Report/
├── data/
│   └── cleaned_reports/           # Output Excel reports
├── sql/
│   └── sample_data.sql            # Sample SQL data script (Optional)
├── .gitignore
├── README.md
├── requirements.txt
├── cleaned_employee_report.py
└── LICENSE                        # Optional
```

---

## 🚀 Setup Instructions

1. **Clone the Repository:**

```bash
git clone https://github.com/your-username/automated-data-cleaning-report.git
cd automated-data-cleaning-report
```

2. **Install Dependencies:**

```bash
pip install -r requirements.txt
```

3. **Setup MySQL Database:**
   - Create a database and table (`employees`).
   - (Optional) Use `sql/sample_data.sql` to insert sample data.

4. **Configure Database Credentials:**

Inside `cleaned_employee_report.py`:

```python
db_user = "root"
db_password = "your_password"
db_host = "localhost"
db_name = "company_db"
```

5. **Run the Script:**

```bash
python cleaned_employee_report.py
```

The cleaned Excel report will be saved in `data/cleaned_reports/`.

---

## 📊 How It Works

1. Connects to **MySQL database**.
2. Fetches raw employee data using SQL query.
3. Cleans missing/null fields:
   - Replaces empty employee names, emails, department names.
   - Fills missing salaries with median salary.
4. Creates an Excel file with:
   - Cleaned employee data.
   - Summary sheet showing total salary per department.

---

## 📁 Output Example:

```
📄 data/cleaned_reports/Cleaned_Employee_Report.xlsx
```

- **Sheet 1:** Cleaned Employee Data
- **Sheet 2:** Department-wise Salary Summary

---

## 📄 License

This project is open-source and available under the [MIT License](LICENSE).
