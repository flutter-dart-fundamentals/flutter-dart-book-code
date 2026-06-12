// Exercise 01 - Bookstore Manager

/* Create a Book class with three private properties: _title (String), _author
(String), and _price (double). Provide a parameterized constructor that
initializes all three properties. Then add a named constructor
Book.freeSample that creates a book with a fixed title of "Sample Book", an
author of "Unknown Author", and a price of 0.0.
Add getters and setters for each property. The setter for price should
ensure the value is never negative, if someone passes a negative number, set
the price to 0 instead. Add a displayInfo() method that prints the title,
author, and price.
In main(), create a regular book using the parameterized constructor with
the sample data "Dart Essentials" by "Laila Shereef" priced at 19.99. Create
a second book using the freeSample named constructor. Try setting the free
sample's price to a negative number to verify your setter works correctly.
Call displayInfo() on both books.
Your output should look like this: */


--- Regular Book ---
Title: Dart Essentials
Author: Laila Shereef
Price: $19.99

--- Free Sample Book ---
Title: Sample Book
Author: Unknown Author
Price: $0.00
