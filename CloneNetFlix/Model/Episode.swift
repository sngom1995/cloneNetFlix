//
//  Episode.swift
//  CloneNetFlix
//
//  Created by Samba NGOM on 28/12/2022.
//

import Foundation


struct Episode: Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var season: Int
    var thumbnailImageUrlString: String
    var description: String
    var length: Int
    var thumbnaiURL:URL {
        return URL(string: thumbnailImageUrlString)!
    }
}
