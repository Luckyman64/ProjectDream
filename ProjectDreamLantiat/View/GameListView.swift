//
//  GameListView.swift
//  ProjectDreamLantiat
//
//  Created by Clement Lantiat on 09/09/1401 AP.
//

import SwiftUI

struct GameListView: View {
    var games: [Game]
    var body: some View {
        ForEach(games){game in
            NavigationLink{
                GameDetailView(game: game)
            }label: {
                GameCell(game: game)
            }
        }
    }
}
