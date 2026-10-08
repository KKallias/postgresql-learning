# PostgreSQL Learning

A practical workspace for PostgreSQL exercises and small learning projects.

## Focus

- Writing clear SQL queries
- Working with relational data
- Practising filtering, aggregation, joins, and data organisation
- Building confidence with PostgreSQL through hands-on examples

This repository will continue to develop as new exercises and examples are added.

## Quick aggregation exercise

Run this self-contained query in a PostgreSQL SQL editor or `psql` to practise grouping and filtering aggregated results:

```sql
WITH orders (customer, amount) AS (
    VALUES
        ('Alice', 25),
        ('Alice', 35),
        ('Bob', 20)
)
SELECT customer, SUM(amount) AS total_amount
FROM orders
GROUP BY customer
HAVING SUM(amount) >= 50
ORDER BY total_amount DESC, customer;
```

Expected result: one row with `customer = 'Alice'` and `total_amount = 60`.

`GROUP BY` combines each customer's orders, and `HAVING` filters the totals after aggregation. Try changing the threshold to `20` to include both customers.
