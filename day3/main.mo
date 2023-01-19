import Array "mo:base/Array";
import Book "./book";
import List "mo:base/List";

actor {

  type Book = Book.Book;

  // 6. list that stores books

  var book_list = List.nil<Book>();

  // 7. takes a book as parameter and add it to your list

  public func add_book(book : Book) : async () {
    book_list := List.push<Book>(book, book_list);
    return;
  };

  // 7. return the books of your list

  public query func get_books() : async [Book] {
    return Array.freeze(List.toVarArray<Book>(book_list));
  };
};
