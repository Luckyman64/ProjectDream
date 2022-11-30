//
//  GameDetailView.swift
//  ProjectDreamLantiat
//
//  Created by Clement Lantiat on 09/09/1401 AP.
//

import SwiftUI

struct GameDetailView: View {
    var game: Game
    var body: some View {
        VStack{
            if let url = game.imageUrl{
                GameImage(gameURL: url)
                    .frame(width: 300)
            }
            Text(game.name).font(.title)
            Text(game.descriptionPreview)
        }
        .padding()
    }
}

struct GameDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let path = Bundle.main.path(forResource: "Root", ofType: "json")!
        let data = try! Data(contentsOf: URL(fileURLWithPath: path))
        let gameP = try! JSONDecoder().decode(Game.self, from: data)
        GameDetailView(game: gameP)
    }
}
