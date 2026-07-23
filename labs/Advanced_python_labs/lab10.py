"""
Lab1: Library Management System 
Objective: Design a library management system to manage books, authors, and library operations using Python classes. Implement instance variables, class variables, method overloading (simulated), static methods, and class methods in your solution
1. Class Definitions: ● BookClass: ○ Instance Variables:
■ title: The title of the book. ■ author: The author of the book. ■ isbn: The ISBN number of the book. ○ Class Variables: ■ total_books: A class variable to keep track of the total number of books in the library. ● Author Class: ○ Instance Variables: ■ name:Thenameof the author. ■ birthdate: The birthdate of the author. ■ books: A list of Book instances written by the author. ○ Class Variables: ■ total_authors: A class variable to keep track of the total number of authors in the system. ● Library Class: ○ Instance Variables: ■ books: A list of Book instances in the library. ■ authors: A list of Author instances associated with the library. ○ Class Variables: ■ library_count: A class variable to keep track of the number of libraries created. 
2. Initialization: ● BookClass: ○ Initialize the Book class with title, author, and isbn. Increment the total_books class variable when a new book is added. ● Author Class: ○ Initialize the Author class with name and birthdate. Increment the total_authors class variable when a new author is added. ● Library Class: ○ Initialize the Library class with empty lists for books and authors. Increment the library_count class variable when a new library is created. 
3. Instance Methods: ● BookClass: ○ update_title(new_title): Update the title of the book. ○ update_author(new_author): Update the author of the book. ● Author Class: ○ add_book(book): Add a Book instance to the author’s list of books. ○ remove_book(isbn): Remove a book from the author’s list based on the ISBN. ● Library Class: ○ add_book(book): Add a Book instance to the library’s collection. ○ remove_book(isbn): Remove a book from the library’s collection based on the ISBN. ○ list_books(): List all books in the library. 
4. Method Overloading (Simulated): ● BookClass: ○ Simulate method overloading with display_info() to handle displaying information based on user type (librarian or reader)
5. Static Methods: ● BookClass: ○ book_info(): A static method that provides general information about books. ● Author Class: ○ author_info(): A static method that provides general information about authors. ● Library Class: ○ library_info(): A static method that provides general information about libraries. 
6. Class Methods: ● BookClass: ○ get_total_books(): A class method to return the total number of books. ● Author Class: ○ get_total_authors(): A class method to return the total number of authors. ● Library Class: ○ get_library_count(): A class method to return the total number of libraries. Instructions: 1. Create the Classes: ○ Implement the Book, Author, and Library classes based on the specifications above. 2. Test the Classes: ○ Create instances of Book, Author, and Library. ○ Add and remove books and authors from libraries. ○ Use the method overloading simulation to display different types of book information. ○ Call static methods to get general information and class methods to get counts
"""
class Book:
    total_books = 0

    def __init__(self, title, author, isbn):
        self.title = title
        self.author = author
        self.isbn = isbn
        Book.total_books += 1

    def update_title(self, new_title):
        self.title = new_title

    def update_author(self, new_author):
        self.author = new_author

    def display_info(self, user_type="reader"):
        if user_type.lower() == "librarian":
            print(f"Title: {self.title}, Author: {self.author}, ISBN: {self.isbn}")
        else:
            print(f" Title: {self.title}, Author: {self.author}")

    @staticmethod
    def book_info():
        print("Books store knowledge and stories across generations.")

    @classmethod
    def get_total_books(cls):
        return cls.total_books


class Author:
    total_authors = 0

    def __init__(self, name, birthdate):
        self.name = name
        self.birthdate = birthdate
        self.books = []
        Author.total_authors += 1

    def add_book(self, book):
        self.books.append(book)

    def remove_book(self, isbn):
        self.books = [b for b in self.books if b.isbn != isbn]

    @staticmethod
    def author_info():
        print("Authors write and curate literary content.")

    @classmethod
    def get_total_authors(cls):
        return cls.total_authors

class Library:
    library_count = 0

    def __init__(self):
        self.books = []
        self.authors = []
        Library.library_count += 1

    def add_book(self, book):
        self.books.append(book)

    def remove_book(self, isbn):
        self.books = [b for b in self.books if b.isbn != isbn]

    def list_books(self):
        for b in self.books:
            print(f"- {b.title} (ISBN: {b.isbn})")

    @staticmethod
    def library_info():
        print("Libraries organize and preserve collections of books.")

    @classmethod
    def get_library_count(cls):
        return cls.library_count
    
lib = Library()
author1 = Author("George Orwell", "1903-06-25")
book1 = Book("1984", "George Orwell", "978-0451524935")
book2 = Book("Animal Farm", "George Orwell", "978-0451526342")

author1.add_book(book1)
author1.add_book(book2)
lib.authors.append(author1)
lib.add_book(book1)
lib.add_book(book2)

print("Library Books:")
lib.list_books()

print("Method Overloading:")
book1.display_info("reader")
book1.display_info("librarian")

lib.remove_book("978-0451526342")
author1.remove_book("978-0451526342")

print("After Removing 'Animal Farm':")
lib.list_books()

print("Static Methods:")
Book.book_info()
Author.author_info()
Library.library_info()

print("Total Books:", Book.get_total_books())
print("Total Authors:", Author.get_total_authors())
print("Total Libraries:", Library.get_library_count())
"""
Output
Library Books:
- 1984 (ISBN: 978-0451524935)
- Animal Farm (ISBN: 978-0451526342)
Method Overloading:
 Title: 1984, Author: George Orwell
Title: 1984, Author: George Orwell, ISBN: 978-0451524935
After Removing 'Animal Farm':
- 1984 (ISBN: 978-0451524935)
Static Methods:
Books store knowledge and stories across generations.
Authors write and curate literary content.
Libraries organize and preserve collections of books.
Total Books: 2
Total Authors: 1
Total Libraries: 1
"""
