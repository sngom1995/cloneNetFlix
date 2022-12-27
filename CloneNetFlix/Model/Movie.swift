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
}
