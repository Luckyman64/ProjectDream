//
//  ContentView.swift
//  ProjectDreamLantiat
//
//  Created by Clement Lantiat on 09/09/1401 AP.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = GameViewModel()
    var body: some View {
        TabView{
            TopGameView(viewModel: viewModel)
                .tabItem{
                    Label("Top games", systemImage: "dice")
                }
            SearchView(viewModel: viewModel)
                .tabItem{
                    Label("Search", systemImage: "magnifyingglass")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView() 
    }
}
