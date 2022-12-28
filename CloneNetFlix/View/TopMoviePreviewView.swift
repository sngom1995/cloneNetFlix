//
//  TopMoviePreviewView.swift
//  CloneNetFlix
//
//  Created by Samba NGOM on 27/12/2022.
//

import SwiftUI
import Kingfisher
struct TopMoviePreviewView: View {
    var movie: Movie
    func isLastCategory(_ cat: String) -> Bool{
        let cnt = movie.categories.count
        
        if let index = movie.categories.firstIndex(of: cat) {
            if index + 1 != cnt {
                return false
            }
        }
        return true
    }
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            VStack{
                Spacer()
                HStack {
                    ForEach(movie.categories, id: \.self){ category in
                        HStack {
                            Text(category)
                                .font(.footnote)
                            if !isLastCategory(category) { Image(systemName: "circle.fill")
                                    .foregroundColor(.blue)
                                .font(.system(size: 3))}
                        }
                            
                    }
                }
                HStack{
                    Spacer()
                    SmallVerticalButton(text: "My list", isOnImage: "checkmark", isOffImage: "plus", isOn: true){}
                    Spacer()
                    PlayButton(text: "Play", imageName: "play.fill" ){}
                        .frame(width: 120)
                    Spacer()
                    SmallVerticalButton(text: "Info", isOnImage: "info.circle", isOffImage: "info.circle", isOn: true){}
                    Spacer()

                }
            }
            .background(LinearGradient.linearGradient                .padding(.top, 250)
            )
            
        }
        .foregroundColor(.white)
    }
}

struct TopMoviePreviewView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreviewView(movie: movieExemple1)
    }
}
