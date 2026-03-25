# Student Management System (SMS) - SCM Implementation

## 📌 Project Overview
This project is a web-based **Student Management System** designed to demonstrate formal **Software Configuration Management (SCM)** practices. It includes a frontend dashboard, a Python-based backend API, and automated build and test configurations.

The project is integrated with **Black Duck** to provide automated Security and License compliance auditing via SCM scanning.

---

## 📂 Project Structure (Configuration Items)
According to the SCMP, the following items are under version control:

* **`/src/frontend/`**: HTML user interface.
* **`/src/backend/`**: Python API logic.
* **`/database/`**: SQL schema for student records.
* **`/test/`**: JSON-based test suites.
* **`/build/`**: Automation scripts for environment setup.
* **`/docs/`**: Project requirements and design documentation.

---

## ⚙️ How to Build and Run
1. **Prerequisites**: Ensure you have Python 3.x installed.
2. **Execute Build**:
   ```bash
   chmod +x build/build.sh
   ./build/build.sh