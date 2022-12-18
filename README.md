Steps to reproduce:
1. Start docker compose `docker compose up --build`
2. Insert new row into calls table:
```sql
insert into calls
values (6, 1, 4, 255896, '2022-12-17T16:10:52+0300');
```
Result: data in ES index not reflects changes

Expected: data in ES index reflects changes
