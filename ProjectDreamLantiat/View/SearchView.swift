//
//  SearchView.swift
//  ProjectDreamLantiat
//
//  Created by Clement Lantiat on 09/09/1401 AP.
//

import SwiftUI

struct SearchView: View {
    @StateObject var viewModel: GameViewModel
    @State private var searchText = ""
    var body: some View {
        NavigationView{
            List{
                
                GameListView(games: viewModel.searchGame)
                 
                    
            }.navigationTitle(Text("Search"))
        }.searchable(text: $searchText).onChange(of: searchText){searchText in
            Task {
                try await viewModel.getSearchGames(text: searchText)
            }
        }
        
            
    }
}

