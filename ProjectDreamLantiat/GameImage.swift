//
//  GameImage.swift
//  ProjectDreamLantiat
//
//  Created by Clement Lantiat on 09/09/1401 AP.
//

import SwiftUI

struct GameImage: View {
    var gameURL: URL
    var body: some View {
        AsyncImage(url: gameURL){
            phase in
            switch phase{
            case .empty:
                ZStack{
                    Color.clear
                    ProgressView()
                }
            case .success(let image):
                image.resizable().aspectRatio(contentMode: .fit)
            case .failure:
                Color.clear
            @unknown default:
                Color.clear
            }
        }
    }
}
