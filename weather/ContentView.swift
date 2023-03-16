//
//  ContentView.swift
//  weather
//
//  Created by Karlis Berzins on 16/03/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        VStack {
            HStack {
                TextField("", text: $searchText, prompt: Text("Search Location").foregroundColor(Color.appTextGray))
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color.appTextGray)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 12)
            .background(Color.appItemBackgroundGray)
            .cornerRadius(16)

            Spacer()
        }
        .padding()
        .background(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
