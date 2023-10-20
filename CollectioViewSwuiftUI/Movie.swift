//
//  Movie.swift
//  CollectioViewSwuiftUI
//
//  Created by Fernanda Perovano on 17/10/23.
//

import Foundation

struct Movie: Identifiable {
    let id = UUID()
    let title: String
    let posterImage: String
    let description: String
}
