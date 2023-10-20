//
//  ContentView.swift
//  CollectioViewSwuiftUI
//
//  Created by Fernanda Perovano on 12/10/23.
//

import SwiftUI
import DSM

struct ContentView: View {
    
    @ObservedObject var movieViewModel = MovieViewModel()

    var body: some View {
        NavigationView {
            ScrollView {
                Image(Constants.image)
                            .resizable()
                            .frame(width: 200, height: 200)
                            .cornerRadius(10)
                Text(DSM.text)
                    .frame(width: Constants.heigDefault)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Constants.backGround)
                LazyVGrid(columns: [GridItem(.flexible(minimum: 200, maximum: 300), spacing: 10)], spacing: 30) {
                    ForEach(movieViewModel.movies) { movie in
                        NavigationLink(destination: MovieDetail(movie: movie)) {
                            MovieCell(movie: movie)
                        }
                    }
                }
                .padding(10)
            }
            .navigationTitle("Filmes")
            .navigationBarTitleDisplayMode(.inline)
        }
        .onAppear {
            movieViewModel.fetchMovies()
        }
    }
}

struct MovieCell: View {
    let movie: Movie

    var body: some View {
        VStack {
           
            Text(movie.title)
                .font(.headline)
                .multilineTextAlignment(.leading)
                .foregroundColor(.gray)
        }
    }
}

@main
struct YourApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

