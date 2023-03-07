//
//  Movie.swift
//  Movies
//
//  Created by Melissa Saechao on 3/1/23.
//

import Foundation

struct Movie {
    let movieTitle: String
    let movieDescription: String
    let moviePosterImgage: URL
    let movieBackdropImage: URL
    let voteAverage: String
    let voteCount: String
    let popularity: String
}

extension Movie {
    
    static var mockMovies: [Movie] = [
        Movie(movieTitle: "Knock at the Cabin", movieDescription: "While vacationing at a remote cabin, a young girl and her two fathers are taken hostage by four armed strangers who demand that the family make an unthinkable choice to avert the apocalypse. With limited access to the outside world, the family must decide what they believe before all is lost.", moviePosterImgage: URL(string: "https://image.tmdb.org/t/p/w500/dm06L9pxDOL9jNSK4Cb6y139rrG.jpg")!, movieBackdropImage: URL(string: "https://image.tmdb.org/t/p/w500//22z44LPkMyf5nyyXvv8qQLsbom.jpg")!, voteAverage: "6.5", voteCount: "639", popularity: "4083.809"),
        Movie(movieTitle: "Black Panther: Wakanda Foever", movieDescription: "Queen Ramonda, Shuri, M’Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T’Challa’s death.  As the Wakandans strive to embrace their next chapter, the heroes must band together with the help of War Dog Nakia and Everett Ross and forge a new path for the kingdom of Wakanda.", moviePosterImgage: URL(string: "https://image.tmdb.org/t/p/w500/sv1xJUazXeYqALzczSZ3O6nkH75.jpg")!, movieBackdropImage: URL(string: "https://image.tmdb.org/t/p/w500//xDMIl84Qo5Tsu62c9DGWhmPI67A.jpg")!,voteAverage: "7.4", voteCount: "3660", popularity: "2605.02"),
        Movie(movieTitle: "Plane", movieDescription: "After a heroic job of successfully landing his storm-damaged aircraft in a war zone, a fearless pilot finds himself between the agendas of multiple militias planning to take the plane and its passengers hostage.", moviePosterImgage: URL(string: "https://image.tmdb.org/t/p/w500/qi9r5xBgcc9KTxlOLjssEbDgO0J.jpg")!, movieBackdropImage: URL(string: "https://image.tmdb.org/t/p/w500//9Rq14Eyrf7Tu1xk0Pl7VcNbNh1n.jpg")!,voteAverage: "6.9", voteCount: "707", popularity: "2266.231"),
        Movie(movieTitle: "Little Dixie", movieDescription: "Erstwhile Special Forces operative Doc Alexander is asked to broker a truce with the Mexican drug cartel in secrecy. When Oklahoma Governor Richard Jeffs celebrates the execution of a high-ranking cartel member on TV, his Chief of Staff and Doc inform him about the peace he just ended. But it’s too late, as Cuco, the cartel’s hatchet man, has set his vengeful sights on Doc’s daughter Dixie.", moviePosterImgage: URL(string: "https://image.tmdb.org/t/p/w500/cmWTZj9zzT9KFt3XyL0gssL7Ig8.jpg")!, movieBackdropImage: URL(string: "https://image.tmdb.org/t/p/w500//k4V6EvpcOsu8CX10JD0H53lFXLq.jpg")!, voteAverage: "6.2", voteCount: "26", popularity: "1598.526"),
        Movie(movieTitle: "Shotgun Wedding", movieDescription: "Darcy and Tom gather their families for the ultimate destination wedding but when the entire party is taken hostage, “’Til Death Do Us Part” takes on a whole new meaning in this hilarious, adrenaline-fueled adventure as Darcy and Tom must save their loved ones—if they don’t kill each other first.", moviePosterImgage: URL(string: "https://image.tmdb.org/t/p/w500/t79ozwWnwekO0ADIzsFP1E5SkvR.jpg")!, movieBackdropImage: URL(string: "https://image.tmdb.org/t/p/w500//zGoZB4CboMzY1z4G3nU6BWnMDB2.jpg")!,voteAverage: "6.4", voteCount: "560", popularity: "1068.197")
        
    ]
}

