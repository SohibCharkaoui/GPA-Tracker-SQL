# GPA-Tracker-SQL
Works to calculate your GPA!
A basic, worldwide GPA calculator completed with the help of MySQL.
You are able to input various courses with the corresponding credit hours, credits,
and view your GPA immediately.

***
# Features
- Multiple course entries are supported
- Compute weighted GPA automatically
- Compatible with any machine without requiring any installation apart from MySQL

Result: Optional “reset” to clear all data
---
# How to Use
1. Open the `CharkaouiGPATracker.sql` file.
2. Execute the entire script once (⚡) to initialize the database.
3. Edit the course list inside the `INSERT INTO` statement according to your own list of classes.
4. Run the **GPA Calculation** section again to view your GPA.
5. Optional: Run the command `TRUNCATE TABLE courses;` if you wish to reset.
 Hortonworks
---
# Example Output
| course_name | credits | grade |

|-------------- | IT 244 | 3 | A | | ECON 101 | 4 | B+ | | MUSIC 115 | 3 | B | 

# Sohib Charkaoui
