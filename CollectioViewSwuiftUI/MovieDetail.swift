//
//  MovieDetail.swift
//  CollectioViewSwuiftUI
//
//  Created by Fernanda Perovano on 17/10/23.
//

import SwiftUI

struct MovieDetail: View {
    
    @ObservedObject var movieViewModel = MovieViewModel()
    let movie: Movie
    
    var body: some View {
        ScrollView {
            VStack {
                Image(movie.posterImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 300)
                    .cornerRadius(10)
                Text(movie.description)
                    .font(.headline)
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding()
            }
        }
    }
}





