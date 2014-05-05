## Peter Lai Shops On...

####Prompt:
Peter Lai continues to shop. Your task is to make the appropriate updates to his receipts table:

1. Yesterday, he purchased 3 Batman shirts (at $20.00 a pop) from Target.
```sql
insert into receipts (store, item, number_of_items, price)
values ('Target', 'Batman shirts', 3, 20.00);
```

2. Peter returned 'The Last Tycoon' to the local bookstore, and the store kindly refunded his card, so the purchase price should be updated to $0.00.
```sql
begin;
update receipts set price = 0
where item = 'The Last Tycoon' and store = 'Local Book Store';
```

3. Add a 'returned' column onto the receipts table. It should take a boolean value and default to `false`.
  - Update the 'returned' value for 'The Last Tycoon' to true.
```sql
alter table receipts
add column returned boolean default false;
update receipts set returned = true
where item = 'The Last Tycoon' and store = 'Local Book Store';
commit;
```

4. Looks like Peter mis-typed JC Penney while inputting his receipts (he forgot the second 'E'). Make sure the store's spelling is correct for all relevant entries in the receipts table.
```sql
update receipts set store = 'JC Penney' where store = 'JC Penny';
```

5. Technically, the __R__ in __Toys R Us__ should be surrounded by double quotes. Update all relevant entries with the proper spelling of Toys "R" Us.
```sql
update receipts set store = 'Toys "R" Us' where store = 'Toys R Us';
```

6. Peter is embarrassed about his Teenage Mutant Ninja Turtles bedspread and wants the purchase stricken from the receipts table. Indulge him.
```sql
delete from receipts where item = 'TMNT bedspread';
```






