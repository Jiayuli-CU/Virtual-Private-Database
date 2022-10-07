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
│   └── policies
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

Testing

`connect P0001`, then input password

`select * from system.product_users;` 

