class Book {
  
    let title: String
    let author: String
    let year: Int
    let pageCount: Int
    
    init(title: String, author: String, year: Int, pageCount: Int) {
        self.title = title
        self.author = author
        self.year = year
        self.pageCount = pageCount
    }
    
    func displayBookInfo() {
        print("Title: \(title)")
        print("Author: \(author)")
        print("Year: \(year)")
        print("Page Count: \(pageCount)")
    }
}

class Library {
    var books: [Book] = []
    
    func addBook(book: Book) {
        books.append(book)
        print("\(book.title) has been added to the library.")
    }
    
    func removeBook(title: String) {
        if let index = books.firstIndex(where: { $0.title == title }) {
            let removedBook = books.remove(at: index)
            print("\(removedBook.title) has been removed from the library.")
        } else {
            print("Book with title \(title) not found in the library.")
        }
    }
    
    func displayLibraryInfo() {
        if books.isEmpty {
            print("The library is empty.")
        } else {
            print("Books in the library:")
            for book in books {
                book.displayBookInfo()
            }
        }
    }
}

let book1 = Book(title: "Пособие студента", author: "Василий Петров", year: 2015, pageCount: 500)
let book2 = Book(title: "Скотный двор", author: "Джордж Оруэл", year: 1945, pageCount: 200)

let library = Library()

library.addBook(book: book1)
library.addBook(book: book2)

library.displayLibraryInfo()
library.removeBook(title: "Пособие студента")

library.displayLibraryInfo()
