//
//  HomeView.swift
//  CloneNetFlix
//
//  Created by Samba NGOM on 27/12/2022.
//

import SwiftUI

struct HomeView: View {
    var vm = HomeVM()
    let screen = UIScreen.main.bounds
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            ScrollView(showsIndicators: false){
                LazyVStack {
                    TopRoButtons()
                    
                    ZStack(alignment: .top) {
                        TopMoviePreviewView(movie: movieExemple1)
                            .frame(width: screen.width)
                        .padding(.top, -120)
                    }
                    .zIndex(-1)
                    ForEach(vm.allCategories, id: \.self){ category in
                        VStack {
                            HStack {
                                Text(category)
                                    .font(.title3)
                                    .bold()
                                Spacer()
                            }
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack{
                                    ForEach(vm.getMovie(forCat: category)){ movie in
                                        StandardHomeMovie(movie: movie)
                                            .frame(width: 100, height: 200)
                                            .padding(.horizontal, 20)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct TopRoButtons: View {
    var body: some View {
        HStack {
            Button(action: {}, label: {
                Image("netflix_logo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50)
            })
            Spacer()
            Button(action: {}, label: {
                Text("Tv shows")
            })
            Spacer()
            Button(action: {}, label: {
                Text("Movies")
            })
            Spacer()
            Button(action: {}, label: {
                Text("My list")
            })
        }
        .padding(.trailing, 30)
        .padding(.leading, 10)
    }
}
