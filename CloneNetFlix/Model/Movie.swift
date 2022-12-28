//
//  Movie.swift
//  CloneNetFlix
//
//  Created by Samba NGOM on 27/12/2022.
//

import Foundation

struct Movie: Identifiable {
    var id: String
    var name: String
    var thumbnailURL: URL
    var categories: [String]
    var year: Int
    var rating: String
    var numberOfSeasons: Int?
    var episodes: [Episode]?
    var promotionHeadline: String?
    var currentEpisode: CurrentEpisodeInfo?
    var defaultEpisode: CurrentEpisodeInfo
    var cast: String
    var creators: String
    
    var displayNumberOfSeasons: String {
        if let numOfSeasons = numberOfSeasons {
            if numOfSeasons == 1 {
                return "1 season"
            }
            else {
                return "\(numOfSeasons) seasons"
            }
           
        }
        return ""
    }
    
    var displayCurrentEpisode: String {
        if let current = currentEpisode {
            return "S\(current.season):E\(current.episode) \(current.episodeName)"
        }
        else {
            return "S\(defaultEpisode.season):E\(defaultEpisode.episode) \(defaultEpisode.episodeName)"
        }
    }
    
    var displayDescription: String {
        if let current = currentEpisode {
            return "\(current.episodeDescroptioin)"
        }
        else {
            return "\(defaultEpisode.episodeDescroptioin)"
        }
    }
}

struct CurrentEpisodeInfo: Hashable, Equatable {
    var episodeName: String
    var episodeDescroptioin: String
    var season: Int
    var episode: Int
}
