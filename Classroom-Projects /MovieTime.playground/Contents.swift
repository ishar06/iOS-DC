import UIKit

let appName: String = "MovieTime"
let movieName: String = "F1"
var ticketPrice: Int
var numberOfTickets: Int

ticketPrice = 550
numberOfTickets = 2

var totalTicketPrice = numberOfTickets * ticketPrice

var hasPopcorn: Bool = false
if totalTicketPrice >= 500{
    hasPopcorn = true
}

var typeOfSeat: String
switch ticketPrice {
    case 200...400:
        typeOfSeat = "Silver"
    case 401...600:
        typeOfSeat = "Gold"
    default:
        typeOfSeat = "VIP"
}
/*
func summary(forMovie: String, havingTicketPrice: Int, withNumberOfSeats: Int, seatType: String, freePopcorn: Bool){
    print("======= MovieTime =======")
    print("Movie Name: \(forMovie)")
    print("Number of Tickets: \(withNumberOfSeats)")
    print("Price of Ticket: \(havingTicketPrice)")
    print("Total Price: \(havingTicketPrice * withNumberOfSeats)")
    print("Type of Seat: \(seatType)")
    if freePopcorn {
        print("Offer: Free Popcorn")
    }
    print("=========================")
    print()
}

summary (forMovie: movieName, havingTicketPrice: ticketPrice, withNumberOfSeats: numberOfTickets, seatType: typeOfSeat, freePopcorn: hasPopcorn)
*/


struct Movie{
    let movieName: String
    let numberOfTickets: Int
    let ticketPrice: Int
    
    func displayMovieDetails(){
        print("Movie name is \(movieName) and number of tickets are \(numberOfTickets)")
        print("Total Price: \(numberOfTickets * ticketPrice)")
        print()
    }
    
}


let firstMovie = Movie(movieName: "F1", numberOfTickets: 2, ticketPrice: 500)
firstMovie.displayMovieDetails()

let secondMovie = Movie(movieName: "Movie Name", numberOfTickets: 3, ticketPrice: 200)

// summary(forMovie: secondMovie.movieName, havingTicketPrice: secondMovie.ticketPrice, withNumberOfSeats: secondMovie.numberOfTickets, seatType: "Silver", freePopcorn: false)



