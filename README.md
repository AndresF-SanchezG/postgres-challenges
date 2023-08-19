# Build a Celestial Bodies Database

This snippet of code is a PostgreSQL database dump containing a series of SQL statements to create and configure tables, sequences, constraints, and relationships within a database. Below are descriptions of the actions the code performs, as well as some of the methods and procedures involved:

Database Creation:

It starts by dropping the existing "universe" database if it exists.
Then, a new database named "universe" is created using template0 with UTF-8 encoding and localization settings.
Database Connection:

It connects to the "universe" database to carry out the following operations.
Table Creation:

Several tables are created in the "public" schema: galaxy, moon, ovnis, planet, and star.
Each table has a set of columns with different data types, such as integers, character strings, and boolean values.
Sequence Creation:

Sequences are created to automatically generate unique values for the primary keys of the tables. For example, galaxy_galaxy_id_seq is a sequence associated with the galaxy_id column in the galaxy table.
Setting Default Values for Sequences:

Default values are set for the sequences using the ALTER SEQUENCE command.
Data Insertion into Tables:

Data is inserted into the galaxy, moon, ovnis, planet, and star tables using the INSERT INTO command. Each table contains records with values for different columns.
Setting Current Values of Sequences:

Current values of the sequences are set using the SELECT pg_catalog.setval command to ensure that the sequences generate appropriate unique values in the future.
Setting Constraints and Primary Keys:

Primary key constraints and unique constraints are set on the tables using the ALTER TABLE ... ADD CONSTRAINT command.
Setting Foreign Keys (Relationships):

Foreign keys (relationships) are established between tables using the ALTER TABLE ... ADD CONSTRAINT command. For example, the moon table has a foreign key referencing the planet_id column in the planet table.
In summary, this SQL code creates a "universe" database with several related tables, sequences for generating primary key values, constraints, and relationships between the tables. These operations form the basic structure of a database and define how different entities are related to each other.
# Screenshot

### Galaxy table
![Captura2](https://github.com/AndresF-SanchezG/postgres-challenges/assets/113924667/07b5eb3c-5c9e-4a24-a321-6437435c58f6)

![Captura2](https://github.com/AndresF-SanchezG/postgres-challenges/assets/113924667/bd1b91c6-deaa-4a37-8d6c-4df66df5bbc1)

### Star Table
![Captura2](https://github.com/AndresF-SanchezG/postgres-challenges/assets/113924667/9e874786-f0ef-40e8-a654-4af006d1d22e)
![Captura2](https://github.com/AndresF-SanchezG/postgres-challenges/assets/113924667/36f27e23-edf5-442e-b8ae-4480424b3c04)

### Planet Table
![Captura2](https://github.com/AndresF-SanchezG/postgres-challenges/assets/113924667/f9d9fe6b-3235-47e7-b485-64453730ac0e)
![Captura2](https://github.com/AndresF-SanchezG/postgres-challenges/assets/113924667/540c672c-60d0-467b-b6a6-d2a07b2402cb)

### Moon Table
![Captura2](https://github.com/AndresF-SanchezG/postgres-challenges/assets/113924667/a995b2dc-ca61-41ac-8d46-6fc4336754dd)
![Captura2](https://github.com/AndresF-SanchezG/postgres-challenges/assets/113924667/6ff381e9-9a16-4ea5-8a26-a87b995d295e)

# Author

- Autor - [@AndresF-SanchezG](https://github.com/AndresF-SanchezG)
- School - [Freecodecamp](https://www.freecodecamp.org/)
- Curse - [Build a Celestial Bodies Database](https://www.freecodecamp.org/learn/relational-database/build-a-celestial-bodies-database-project/build-a-celestial-bodies-database)
