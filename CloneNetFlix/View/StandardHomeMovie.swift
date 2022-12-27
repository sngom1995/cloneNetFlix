//
//  StandardHomeMovie.swift
//  CloneNetFlix
//
//  Created by Samba NGOM on 27/12/2022.
//

import SwiftUI
import Kingfisher

struct StandardHomeMovie: View {
    let movie: Movie
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
    }
}

struct StandardHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovie(movie: movieExemple1)
    }
}
