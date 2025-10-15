 Student Management System (JSP + Servlet + JDBC)

Minimal student management app. CRUD for students using plain JDBC and JSP/Servlets.

** Prerequisites
- Java 11+
- Maven
- Tomcat (10.x for Jakarta Servlet 5) or any compatible servlet container
- MySQL

** Setup

1. Create database and table:
   - Run `sql/schema.sql` in your MySQL server.

2. Update DB credentials:
   - Edit `src/main/java/com/example/sms/db/DBUtil.java`
   - Set `USER` and `PASS`.


