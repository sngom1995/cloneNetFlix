//
//  GlobalMovieHelpers.swift
//  CloneNetFlix
//
//  Created by Samba NGOM on 27/12/2022.
//

import Foundation
import SwiftUI

let movieExemple1 = Movie(id: UUID().uuidString, name: "DARK", thumbnailURL: URL(string: "https://picsum.photos/200/300")!, categories: ["Distopian", "Exciting", "Suspensefull", "Sci-Fi TV"], year: 2022, rating: "TV-MA", numberOfSeasons: 1, promotionHeadline: "Best movie show", defaultEpisode: exempleEpisode, cast: "Louis Offman, Oliver Msucci, jordis Triebel", creators: "Baran Bo Odan, Jantje Friese")
let movieExemple2 = Movie(id: UUID().uuidString, name: "Travellers", thumbnailURL: URL(string: "https://picsum.photos/200/301")!, categories: ["Distopian", "Exciting", "Suspensefull", "Sci-Fi TV"], year: 2022, rating: "TV-MA", numberOfSeasons: 3, defaultEpisode: exempleEpisode, cast: "Louis Offman, Oliver Msucci, jordis Triebel", creators: "Baran Bo Odan, Jantje Friese")
let movieExemple3 = Movie(id: UUID().uuidString, name: "Community", thumbnailURL: URL(string: "https://picsum.photos/200/302")!, categories: ["Distopian", "Exciting", "Suspensefull", "Sci-Fi TV"],year: 2022, rating: "TV-MA", numberOfSeasons: 5, defaultEpisode: exempleEpisode, cast: "Louis Offman, Oliver Msucci, jordis Triebel", creators: "Baran Bo Odan, Jantje Friese")
let movieExemple4 = Movie(id: UUID().uuidString, name: "Alone", thumbnailURL: URL(string: "https://picsum.photos/200/303")!, categories: ["Distopian", "Exciting", "Suspensefull", "Sci-Fi TV"], year: 2022, rating: "TV-MA", numberOfSeasons: 2, defaultEpisode: exempleEpisode, cast: "Louis Offman, Oliver Msucci, jordis Triebel", creators: "Baran Bo Odan, Jantje Friese")
let movieExemple5 = Movie(id: UUID().uuidString, name: "Hannibal", thumbnailURL: URL(string: "https://picsum.photos/200/304")!, categories: ["Distopian", "Exciting", "Suspensefull", "Sci-Fi TV"], year: 2022, rating: "TV-MA", numberOfSeasons: 4, defaultEpisode: exempleEpisode, cast: "Louis Offman, Oliver Msucci, jordis Triebel", creators: "Baran Bo Odan, Jantje Friese")
let movieExemple6 = Movie(id: UUID().uuidString, name: "After life", thumbnailURL: URL(string: "https://picsum.photos/200/305")!, categories: ["Distopian", "Exciting", "Suspensefull", "Sci-Fi TV"], year: 2022, rating: "TV-MA", numberOfSeasons: 3, defaultEpisode: exempleEpisode, cast: "Louis Offman, Oliver Msucci, jordis Triebel", creators: "Baran Bo Odan, Jantje Friese")
let movieExemple7 = Movie(id: UUID().uuidString, name: "Equalizer", thumbnailURL: URL(string: "https://picsum.photos/200/306")!, categories: ["Distopian", "Exciting", "Suspensefull", "Sci-Fi TV"], year: 2022, rating: "TV-MA", numberOfSeasons: 2, defaultEpisode: exempleEpisode, cast: "Louis Offman, Oliver Msucci, jordis Triebel", creators: "Baran Bo Odan, Jantje Friese")


let moviesExemple : [Movie] = [movieExemple1, movieExemple2,movieExemple3, movieExemple4, movieExemple5, movieExemple6, movieExemple7]

extension LinearGradient {
    static let linearGradient = LinearGradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)], startPoint: .top, endPoint: .bottom)
}

let exempleEpisode = CurrentEpisodeInfo(episodeName: "Endings and beginnings", episodeDescroptioin: " Equalizer is a 2014 American vigilante action film directed by Antoine Fuqua, loosely based on the 1980s TV series of the same title. Written by Richard Wenk, it stars Denzel Washington in the lead role, Marton Csokas, Chloë Grace Moretz, David Harbour, Bill Pullman and Melissa Leo. ", season: 1, episode: 8)
