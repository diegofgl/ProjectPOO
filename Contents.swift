import UIKit

enum Genre {
    case fiction, nonFiction, fantasy, mystery
}

struct Book {
    var title: String
    var author: String
    var genre: Genre
}

var library: [Book] = []

library.append(Book(title: "O Senhor dos Anéis: A Sociedade do Anel", author: "J.R.R. Tolkien", genre: .fantasy))
library.append(Book(title: "O Senhor dos Anéis: As Duas Torres", author: "J.R.R. Tolkien", genre: .fantasy))
library.append(Book(title: "O Senhor dos Anéis: O Retorno do Rei", author: "J.R.R. Tolkien", genre: .fantasy))

class LibraryManager {
    var library: [Book] = []
    
    func addBook(book: Book) {
        library.append(book)
    }
    
    func listBooks() {
        for book in library {
            print("Livro: \(book.title), Autor: \(book.author), Gênero: \(book.genre)")
        }
    }
    
    func removeBook(title: String) {
        if let index = library.firstIndex(where: { $0.title == title }) {
            library.remove(at: index)
        }
    }
}

let libraryManager = LibraryManager()

libraryManager.addBook(book: Book(title: "Harry Potter", author: "J.K. Rowling", genre: .fantasy))

libraryManager.listBooks()

libraryManager.removeBook(title: "O Senhor dos Anéis: O Retorno do Rei")

libraryManager.listBooks()
