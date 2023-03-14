//
//  Poster.swift
//  Movies
//
//  Created by Melissa Saechao on 3/11/23.
//

import Foundation

struct PosterSearchResponse: Decodable {
    let results: [Poster]
    
}

struct Poster: Decodable {
    let poster_path: URL
    let original_title: String
    let overview: String
    let backdrop_path: URL
    let vote_average: Double
    let vote_count: Int
    let popularity: Double
    
}
