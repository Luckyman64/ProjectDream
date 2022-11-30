//
//  Game.swift
//  ProjectDreamLantiat
//
//  Created by Clement Lantiat on 09/09/1401 AP.
//

import Foundation

class GameFetcher{
    let clientID  = "UsqOcReKpf"
    let jsonDecoder = JSONDecoder()
    
    let gamesURLString = "https://api.boardgameatlas.com/api/search?order_by=rank&client_id="
    
    func getGames(nb: Int)async throws -> Games{
        let gameURL = URL(string: gamesURLString + clientID + "&skip=\(nb)")!
        let request = URLRequest(url: gameURL)
        let (data, _) = try await URLSession.shared.data(for: request)
        let games = try jsonDecoder.decode(Games.self, from: data)
        return games
    }
    
    func getSearchGames(text: String)async throws -> Games{
        let gameURL = URL(string: gamesURLString + "&name=\(text)")!
        let request = URLRequest(url: gameURL)
        let (data, _) = try await URLSession.shared.data(for: request)
        let games = try jsonDecoder.decode(Games.self, from: data)
        return games
    }
}

