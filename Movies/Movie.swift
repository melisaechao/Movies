//
//  Movie.swift
//  Movies
//
//  Created by Melissa Saechao on 3/1/23.
//

import Foundation

struct MoviesResponse: Decodable {
    let results: [Movie]
}

struct Movie: Decodable {
    let original_title: String
    let overview: String
    let poster_path: URL
    let backdrop_path: URL
    let vote_average: Double
    let vote_count: Int
    let popularity: Double
}

