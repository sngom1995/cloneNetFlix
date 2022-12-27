//
//  HomeVM.swift
//  CloneNetFlix
//
//  Created by Samba NGOM on 27/12/2022.
//

import Foundation

class HomeVM: ObservableObject {
    @Published var movies: [String:[Movie]] = [:]
    public var allCategories: [String]{
        return movies.keys.map({String($0)})
    }
    init(){
        setupMovie()
    }
    func getMovie(forCat cat: String) -> [Movie] {
        return movies[cat] ?? []
    }
    func setupMovie(){
        movies["Trending movie now"] = moviesExemple
        movies["Stand-up Comedy"] = moviesExemple.shuffled()
        movies["New releases"] = moviesExemple.shuffled()
        movies["Watch it again"] = moviesExemple.shuffled()
        movies["Science"] = moviesExemple.shuffled()


    }
}
