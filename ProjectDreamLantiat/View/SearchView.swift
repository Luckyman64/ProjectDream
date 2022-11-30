//
//  SearchView.swift
//  ProjectDreamLantiat
//
//  Created by Clement Lantiat on 09/09/1401 AP.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationView{
            Text("Yo")
        }.searchable(text: $searchText)
    }
}

