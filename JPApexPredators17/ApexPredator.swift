//
//  ApexPredator.swift
//  JPApexPredators17
//
//  Created by Angel Martínez Escobar on 23/01/24.
//

import Foundation

struct ApexPredator: Decodable {
    let id: Int
    let name: String
    let type: String
    let latitude: Double
    let longitud: Double
    let movies: [String]
    let movieScenes: [MovieScene]
    let link: String
    
    struct MovieScene: Decodable {
        let id: Int
        let movie: String
        let sceneDescription: String
    }
}
