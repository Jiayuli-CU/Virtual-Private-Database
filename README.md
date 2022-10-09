# Virtual-Private-Database
## CS5322 Database Security Project 1

### Project Structure
```text
├── operation
│   ├── create
│   ├── insert
│   └── policies
├── product
│   ├── create
│   ├── insert
│   └── policies
├── R&D
│   ├── create
│   ├── insert
│   └── policies
├── support
│   ├── create
│   ├── insert
│   ├── policies
|   └── test 
└── README.md
```
* **create**: contains all .sql files for creating tables
* **insert**: contains all .sql files for inserting data into tables
* **policies**: contains all .sql files for conducting row-based and table-based access controls

### Database User Table

| Username | Password | ROLE       |
| -------- | -------- | ---------- |
| P0001 | abcd1234 | pd_manager |
| P0002 | Abcd1234 | ds |
| P0003 | abcd1234 | pr_manager |
| P0004 | abcd1234 | ad_manager |
| MK0001 | abcd1234 | product_operation |
| MK0002 | abcd1234 | content_operation |
| MK0003 | abcd1234 | activities_operation |
| HR10001 |abcd1234 | hrbp |
| HR10002 |abcd1234 | hr_manager |
| ACC10001 | abcd1234 | accountant |
| ACC10002 | abcd1234 | accountan_manager |
| OP10001 | abcd1234 | operator |
| OP10001 | abcd1234 | operator_manager |




Testing

`connect P0001`, then input password

`select * from system.project_users;` 







