module {

  // 4. book

  public type Book = {
    title : Text;
    pages : Nat;
  };

  // 5. create a new book

  func create_book(title : Text, pages : Nat) : Book {
    return {
      title = title;
      pages = pages;
    };
  };
};
