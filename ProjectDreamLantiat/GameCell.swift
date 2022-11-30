//
//  SwiftUIView.swift
//  ProjectDreamLantiat
//
//  Created by Clement Lantiat on 09/09/1401 AP.
//

import SwiftUI

struct GameCell: View {
    var game: Game
    var body: some View {
        HStack{
            if let url = game.imageUrl{
                GameImage(gameURL: url)
                    .frame(width: 100)
            }
            VStack(alignment: .leading){
                Text(game.name).font(.title2).lineLimit(1)
                Text(game.descriptionPreview).lineLimit(3)
            }
        }
    }
}

