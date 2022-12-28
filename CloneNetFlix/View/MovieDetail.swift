//
//  MovieDetail.swift
//  CloneNetFlix
//
//  Created by Samba NGOM on 27/12/2022.
//

import SwiftUI

struct MovieDetail: View {
    var movie: Movie
    let screen = UIScreen.main.bounds
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack{
                    Spacer()
                    Button(action: {}, label: {
                        Image(systemName: "xmark.circle")
                            .font(.system(size: 28))
                    })
                    .buttonStyle(PlainButtonStyle())
                }
                .padding(.horizontal, 20)
                
                ScrollView(.vertical, showsIndicators: false) {
                    StandardHomeMovie(movie: movie)
                        .frame(width: screen.width/2.5)
                       
                    MovieInfosubheadline(movie: movie)
                    if  movie.promotionHeadline != nil {
                        Text(movie.promotionHeadline!)
                            .bold()
                            .font(.headline)
                    }
                    
                    PlayButton(text: "Play", imageName: "play.fill", backgroundColor: .red){}
                    HStack {
                        Text(movie.displayCurrentEpisode)
                            .bold()
                        Spacer()
                    }
                    .padding(.vertical, 4)
                    HStack {
                        Text(movie.displayDescription)
                            .font(.subheadline)
                        Spacer()
                    }
                    VStack {
                        HStack{
                            Text("Cast: \(movie.cast)")
                            Spacer()
                        }
                        HStack{
                            Text("Creators: \(movie.creators)")
                            Spacer()
                        }
                    }
                    .font(.caption)
                    .foregroundColor(.gray)
                    .padding(.vertical, 10)
                }
                Spacer()
            }
            .foregroundColor(.white)
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: movieExemple1)
    }
}

struct MovieInfosubheadline: View {
    var movie: Movie
    var body: some View {
        HStack(spacing: 20){
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            Text(String(movie.year))
            MovieRating(rating: movie.rating)
            Text(movie.displayNumberOfSeasons)
            ZStack {
                Rectangle()
                    .padding(.leading, 15)
                    .foregroundColor(.black)
                    .border(.gray)
                Text("HD")
                    .foregroundColor(.white)
                
            }
            
            .frame(width: 25, height: 20)
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}

struct MovieRating: View {
    var rating: String
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.gray)
            
            Text(rating)
                .foregroundColor(.white)
                .font(.system(size: 12))
                .bold()
        }
        .frame(width: 50, height: 20)
    }
}
