
# Groceries

## Prerequisites

- [JDK](https://www.oracle.com/java/technologies/downloads/)
- download [the mysql server](https://dev.mysql.com/downloads/mysql/)
- create a mysql's database: `create database groceries`
- run scripts from the db_data to create tables

## Vocabulary

- recipe: it's a tuple containing a recipe name, ingredients with their amounts, notes and so on.
- groceries: a list of tuples containing ingredients, amount, notes... Groceries are generated from recipes. If 2 or
  more recipes contain same ingredients, they can be combined (reduced) giving one entry of groceries.
- reduce strategy: it's used when we reduce grocery list entries. E.x. 2 potato entries in the amount of 2 kilo each can
  be reduced to one potato entry in the amount of 2 * (2 kg)