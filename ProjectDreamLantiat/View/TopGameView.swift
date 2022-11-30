//
//  TopGameView.swift
//  ProjectDreamLantiat
//
//  Created by Clement Lantiat on 09/09/1401 AP.
//

import SwiftUI

struct TopGameView: View {
    @StateObject var viewModel: GameViewModel
    var body: some View {
        NavigationView{
            List{
                
                GameListView(games: viewModel.games)
                    .navigationTitle(Text("Top games"))
                ProgressView()
                    .onAppear{
                        Task {
                            try? await viewModel.getGames()
                        }
                    }
                    
            }
        }
        
    }
}

