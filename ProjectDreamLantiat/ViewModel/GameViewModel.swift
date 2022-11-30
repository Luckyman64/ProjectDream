//
//  GameViewModel.swift
//  ProjectDreamLantiat
//
//  Created by Clement Lantiat on 09/09/1401 AP.
//

import SwiftUI

@MainActor
class GameViewModel: ObservableObject{
    @Published var games = [Game]()
    let gameFetcher = GameFetcher()
    func getGames() async throws{
        let gamesResponse = try await gameFetcher.getGames()
        games.append(contentsOf: gamesResponse.games)
    }
}
