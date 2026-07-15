import UIKit

@MainActor
class MediaItem {
    var title: String
    var author: String
    var publicationYear: Int
    
    init(title: String, author: String, publicationYear: Int) {
        self.title = title
        self.author = author
        self.publicationYear = publicationYear
    }
    
    func describe() {
        print("Title is \(title), Author name is \(author) and Publication year is \(publicationYear).")
    }
}


enum Genre {
    case fictional, horror, fantasy, romance, comedy
}

@MainActor
class Book: MediaItem {
    var pageCount: Int
    var genre: Genre
    var rating: Int? {
        didSet {
            guard let rating = rating else { return }
            if rating < 0 { self.rating = 0 }
            if rating > 5 { self.rating = 5 }
        }
    }
    
    var readingTime: Int { pageCount * 250 / 300 }
    
    static var maximumPages: Int = 2000
    
    init?(title: String, author: String, publicationYear: Int, pageCount: Int, genre: Genre, rating: Int?) {
        if title.isEmpty || pageCount < 1 || pageCount > 2000 {
            return nil
        }
        self.pageCount = pageCount
        self.genre = genre
        self.rating = rating
        super.init(title: title, author: author, publicationYear: publicationYear)
    }
    
    override func describe() {
        if let rating = rating {
            print("Title is \(title), Author name is \(author), Publication year is \(publicationYear), Pages: \(pageCount), Genre: \(genre), Rating: \(rating).")
        } else {
            print("Title is \(title), Author name is \(author), Publication year is \(publicationYear), Pages: \(pageCount), Genre: \(genre), Rating: No rating.")
        }
    }
}


extension Book: @MainActor Equatable, @MainActor Comparable {
    static func == (lhs: Book, rhs: Book) -> Bool {
        return lhs.title == rhs.title
    }
    
    static func < (lhs: Book, rhs: Book) -> Bool {
        if lhs.title != rhs.title {
            return lhs.title < rhs.title
        }
        return lhs.pageCount < rhs.pageCount
    }
}

@MainActor
struct AllBooks {
    var books: [Book]
    func sortAllBooks() -> [Book] {
        books.sorted{
            $0.title < $1.title
        }
    }
}
